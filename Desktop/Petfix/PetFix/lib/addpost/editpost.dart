import 'package:flutter/material.dart';
import 'package:petpix/Components/color.dart';
import 'package:petpix/backend/datahelper.dart';

class EditPostPage extends StatefulWidget {
  final Map<String, dynamic> post;

  EditPostPage({required this.post});

  @override
  _EditPostPageState createState() => _EditPostPageState();
}

class _EditPostPageState extends State<EditPostPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController.text = widget.post['title'] ?? '';
    bodyController.text = widget.post['body'] ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gönderiyi Düzenle'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Başlık',
                labelStyle: TextStyle(
                    color: primaryColor), 
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: bodyController,
              decoration: InputDecoration(
                labelText: 'İçerik',
                labelStyle: TextStyle(
                    color: primaryColor), 
              ),
              maxLines: null, 
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                DatabaseHelper() .updatePost(
                  widget.post['id'],
                  widget.post['user_id'],
                  titleController.text,
                  bodyController.text,
                  widget.post['image_path'],
                )
                    .then((_) {
                  Navigator.pop(context); 
                });
              },
              child: Text('Gönderiyi Güncelle'),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor, 
                textStyle:
                    TextStyle(color: Colors.white), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}

