
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UpdatePostPage extends StatefulWidget {
  final int postId;
  final int userId;
  final String initialTitle;
  final String initialBody;
  final String initialImagePath;
  final Function(int, int, String, String, String) updatePostCallback;

  UpdatePostPage({
    required this.postId,
    required this.userId,
    required this.initialTitle,
    required this.initialBody,
    required this.initialImagePath,
    required this.updatePostCallback,
  });

  @override
  _UpdatePostPageState createState() => _UpdatePostPageState();
}

class _UpdatePostPageState extends State<UpdatePostPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  File? _image;

  @override
  void initState() {
    super.initState();
    titleController.text = widget.initialTitle;
    bodyController.text = widget.initialBody;
    if (widget.initialImagePath.isNotEmpty) {
      _image = File(widget.initialImagePath);
    }
  }

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gönderiyi Güncelle'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Başlık'),
              ),
              SizedBox(height: 12.0),
              TextField(
                controller: bodyController,
                decoration: InputDecoration(labelText: 'İçerik'),
              ),
              SizedBox(height: 12.0),
              ElevatedButton(
                onPressed: _pickImage,
                child: Text('Resim Seç'),
              ),
              if (_image != null) ...[
                SizedBox(height: 12.0),
                Image.file(_image!),
              ],
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  if (_image != null) {
                    widget.updatePostCallback(
                      widget.postId,
                      widget.userId,
                      titleController.text,
                      bodyController.text,
                      _image!.path,
                    );
                    Navigator.pop(context); // Geri dön
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Lütfen bir resim seçin')),
                    );
                  }
                },
                child: Text('Gönderiyi Güncelle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
