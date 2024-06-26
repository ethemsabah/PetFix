import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:petpix/backend/datahelper.dart';
import 'package:petpix/pages/user/profilscreendetail.dart';
import 'package:petpix/pages/user/settingspage.dart';

class ProfilePage extends StatefulWidget {
  final int userId;

  ProfilePage({required this.userId});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  DatabaseHelper dbHelper = DatabaseHelper();
  Map<String, dynamic>? user;
  List<Map<String, dynamic>> photos = [];
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final userData = await dbHelper.getUser(widget.userId);
    final userPhotos = await dbHelper.getUserPhotos(widget.userId);
    setState(() {
      user = userData;
      photos = userPhotos;
    });
  }

  Future<void> _addPhoto() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      TextEditingController captionController = TextEditingController();

      await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Add Photo'),
            content: TextField(
              controller: captionController,
              decoration: InputDecoration(hintText: 'Enter a caption'),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () async {
                  String caption = captionController.text;
                  String date = DateTime.now().toIso8601String();
                  await dbHelper.insertPhoto({
                    'user_id': widget.userId,
                    'image_path': pickedFile.path,
                    'caption': caption,
                    'date': date,
                  });
                  _loadUserData();
                  Navigator.of(context).pop();
                },
                child: Text('Add'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBackgroundGradient(),
          Column(
            children: [
              _buildAppBar(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildProfileHeader(),
                      Divider(color: Colors.black),
                      _buildPhotoGrid(),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _addPhoto,
                        child: Text('Add Photo'),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundGradient() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orange.shade200, Colors.orange.shade200],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            IconButton(
              icon: Icon(Icons.settings, color: Colors.black),
              onPressed: () {
                _navigateToSettings();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToSettings() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsPage(userId: widget.userId),
      ),
    ).then((value) {
      if (value != null && value) {
        _loadUserData();
      }
    });
  }

  Widget _buildProfileHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: user?['profile_image'] != null
                    ? FileImage(File(user!['profile_image']))
                    : AssetImage('assets/default_avatar.png') as ImageProvider,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user?['name'] ?? '',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  Text(user?['bio'] ?? '', style: TextStyle(color: Colors.black)),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatItem("Posts", photos.length.toString()),
              _buildStatItem("Followers", "0"), // Placeholder for followers count
              _buildStatItem("Following", "0"), // Placeholder for following count
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }

  Widget _buildPhotoGrid() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: photos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (context, index) {
          return _buildPhotoItem(photos[index]);
        },
      ),
    );
  }

  Widget _buildPhotoItem(Map<String, dynamic> photo) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PhotoDetailPage(photo: photo, user: user),
          ),
        );
      },
      child: Image.file(
        File(photo['image_path']),
        fit: BoxFit.cover,
      ),
    );
  }
}
