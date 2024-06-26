import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petpix/Components/appbar.dart';
import 'package:petpix/Components/color.dart';
import 'package:petpix/addpost/addcommentpage.dart';
import 'package:petpix/addpost/addpost.dart';
import 'package:petpix/addpost/editcommentpage.dart';
import 'package:petpix/addpost/editpost.dart';
import 'package:petpix/backend/datahelper.dart';
import 'package:path_provider/path_provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Map<String, dynamic>> posts = [];

  @override
  void initState() {
    super.initState();
    _loadPosts();
  }

  Future<void> _loadPosts() async {
    List<Map<String, dynamic>> fetchedPosts =
        await databaseHelper.getAllPosts();
    setState(() {
      posts = fetchedPosts;
    });
  }

  Future<void> _likePost(int postId) async {
    await databaseHelper.likePost(postId, 1);
    _loadPosts();
  }

  Future<void> _unlikePost(int postId) async {
    await databaseHelper.unlikePost(postId, 1);
    _loadPosts();
  }

  Future<void> _addPost(
      int userId, String title, String body, String imagePath) async {
    await databaseHelper.insertPost(userId, title, body, imagePath);
    _loadPosts();
  }

  Future<void> _addComment(int postId, String comment) async {
    await databaseHelper.inserrtComment(1, postId, comment);
    _loadPosts();
  }

  Future<void> _deleteComment(int commentId) async {
    await databaseHelper.deleteeComment(commentId);
    _loadPosts();
  }

  Future<void> _deletePost(int postId) async {
    await databaseHelper.deletePost(postId);
    _loadPosts(); 
  }

  Future<void> _updateComment(int commentId, String updatedComment) async {
    await databaseHelper.updateComment(
        commentId, updatedComment);
    _loadPosts(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(),
      body: _buildBody(), // Ana içerik
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddPostPage(addPostCallback: _addPost)),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor, 
      ),
      backgroundColor:
          Colors.grey[200], 
    );
  }

  Widget _buildBody() {
    if (posts.isEmpty) {
      return Center(
        child: Text('Henüz gönderi yok.'),
      );
    } else {
      return ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return _buildPostItem(posts[index]); 
        },
      );
    }
  }

  Widget _buildLikeButton(int postId) {
    return FutureBuilder<bool>(
      future: databaseHelper.isPostLikedByUser(
          postId, 1), 
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        bool isLiked = snapshot.data!;
        return IconButton(
          icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
              color: primaryColor),
          onPressed: () {
            if (isLiked) {
              _unlikePost(postId);
            } else {
              _likePost(postId);
            }
          },
        );
      },
    );
  }

  Widget _buildPostItem(Map<String, dynamic> post) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      color: Colors.white, 
      elevation: 2.0, 
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8.0), 
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditPostPage(post: post)),
                  );
                  _loadPosts();
                },
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  _deletePost(post['id']);
                },
              ),
            ],
          ),
          ListTile(
            leading: post['profile_image'] != null
                ? CircleAvatar(
                    backgroundImage: FileImage(File(post['profile_image'])),
                  )
                : CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor:primaryColor,
                        
                  ),
            title: Text(
              post['name'] ?? 'Kullanıcı',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(post['title']),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(post['body'] ?? ''),
          ),
          if (post['image_path'] != null &&
              File(post['image_path']).existsSync())
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.file(File(post['image_path'])),
            ),
          if (post['image_path'] == null ||
              !File(post['image_path']).existsSync())
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Resim yüklenemedi'),
            ),
          _buildCommentsSection(post['id']), 
          _buildAddCommentButton(post['id']), 
        ],
      ),
    );
  }

  Widget _buildCommentsSection(int postId) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future:
          databaseHelper.getComments(postId), 
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Yorumlar yüklenirken hata oluştu'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return SizedBox.shrink(); 
        } else {
          List<Map<String, dynamic>> comments = snapshot.data!;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  'Yorumlar (${comments.length})',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: primaryColor), 
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  return _buildCommentItem(
                      comments[index]); 
                },
              ),
            ],
          );
        }
      },
    );
  }

  Widget _buildCommentItem(Map<String, dynamic> comment) {
    TextEditingController controller =
        TextEditingController(text: comment['comment']);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.grey[300], 
          borderRadius:
              BorderRadius.circular(10.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
              backgroundColor:primaryColor
                
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: controller,
                    readOnly: true,
                    decoration: InputDecoration(
                      border: InputBorder.none, 
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () async {
                        
                          String updatedComment = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    EditCommentPage(comment: comment)),
                          );
                          if (updatedComment != null &&
                              updatedComment.isNotEmpty) {
                            _updateComment(comment['id'], updatedComment);
                          }
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _deleteComment(comment['id']);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddCommentButton(int postId) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddCommentPage(
                    postId: postId, addCommentCallback: _addComment)),
          );
        },
        child: Text('Yorum Ekle'),
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          textStyle: TextStyle(color: Colors.white), 
        ),
      ),
    );
  }

  Widget _buildEditDeleteButtons(Map<String, dynamic> post) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            icon: Icon(Icons.edit),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EditPostPage(post: post)),
              );
              _loadPosts();
              _loadPosts(); 
            }),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            _deletePost(post['id']);
          },
        ),
      ],
    );
  }
}




