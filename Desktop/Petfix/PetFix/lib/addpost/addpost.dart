import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petpix/Components/appbar.dart';
import 'package:petpix/Components/color.dart';

class AddPostPage extends StatefulWidget {
  final Function(int, String, String, String) addPostCallback;

  AddPostPage({required this.addPostCallback});

  @override
  _AddPostPageState createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  File? _image;
  int userId =
      1; 

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
              SizedBox(height: 12.0),
              ElevatedButton(
                onPressed: _pickImage,
                child: Text('Resim Seç'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  textStyle:
                      TextStyle(color: Colors.white),
                ),
              ),
              if (_image != null) ...[
                SizedBox(height: 12.0),
                Image.file(_image!),
              ],
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  if (_image != null) {
                    widget.addPostCallback(
                      userId,
                      titleController.text,
                      bodyController.text,
                      _image!.path,
                    );
                    Navigator.pop(context); 
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Lütfen bir resim seçin')),
                    );
                  }
                },
                child: Text('Gönder'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor, 
                  textStyle:
                      TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
