import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petpix/backend/datahelper.dart';

class SettingsPage extends StatefulWidget {
  final int userId;

  SettingsPage({required this.userId});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  DatabaseHelper dbHelper = DatabaseHelper();
  late TextEditingController _nameController;
  late TextEditingController _bioController;
  File? _imageFile;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _bioController = TextEditingController();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final userData = await dbHelper.getUser(widget.userId);
    setState(() {
      _nameController.text = userData?['name'] ?? '';
      _bioController.text = userData?['bio'] ?? '';
      // Load profile image if available
      if (userData?['profile_image'] != null) {
        _imageFile = File(userData!['profile_image']);
      }
    });
  }

  Future<void> _updateProfile() async {
    setState(() {
      _loading = true;
    });

    String name = _nameController.text;
    String bio = _bioController.text;

    
    await dbHelper.updateUserProfile(widget.userId, name, bio, _imageFile?.path ?? '');

    setState(() {
      _loading = false;
    });

    Navigator.of(context).pop(true); 
  }

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayarlar'),
      ),
      body: _loading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 50,
                     
                    ),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(labelText: 'İsim'),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    controller: _bioController,
                    decoration: InputDecoration(labelText: 'Biyografi'),
                    maxLines: null,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _updateProfile,
                    child: Text('Güncelle'),
                  ),
                ],
              ),
            ),
    );
  }
}
