import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petpix/Components/appbar.dart';
import 'package:petpix/Components/color.dart';
import 'package:petpix/backend/datahelper.dart';
import 'dart:io';

class AddAnimalPage extends StatefulWidget {
  @override
  _AddAnimalPageState createState() => _AddAnimalPageState();
}

class _AddAnimalPageState extends State<AddAnimalPage> {
  final _formKey = GlobalKey<FormState>();
  String _animalType = '';
  String _breed = '';
  int _age = 0;
  String _gender = '';
  String _description = '';
  File? _image;
  final dbHelper = DatabaseHelper();

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final matchId = await dbHelper.insertMatch(
        1, _animalType, _breed, _age, _gender, _description,
      );
      if (_image != null) {
        await dbHelper.updateMatchWithImage(matchId, _image!.path);
      }
      Navigator.pop(context);
    }
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    required Function(String?) onSaved,
    String? Function(String?)? validator,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: label,
          prefixIcon: Icon(icon, color: Colors.teal),
        ),
        validator: validator,
        onSaved: onSaved,
        keyboardType: keyboardType,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange.shade100, Colors.orange.shade200],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                _buildTextField(
                  label: 'Animal Type',
                  icon: Icons.pets,
                  onSaved: (value) {
                    _animalType = value!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter animal type';
                    }
                    return null;
                  },
                ),
                _buildTextField(
                  label: 'Breed',
                  icon: Icons.category,
                  onSaved: (value) {
                    _breed = value!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter breed';
                    }
                    return null;
                  },
                ),
                _buildTextField(
                  label: 'Age',
                  icon: Icons.cake,
                  onSaved: (value) {
                    _age = int.parse(value!);
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter age';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                ),
                _buildTextField(
                  label: 'Gender',
                  icon: Icons.wc,
                  onSaved: (value) {
                    _gender = value!;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter gender';
                    }
                    return null;
                  },
                ),
                _buildTextField(
                  label: 'Description',
                  icon: Icons.description,
                  onSaved: (value) {
                    _description = value!;
                  },
                ),
                SizedBox(height: 20),
                _image == null
                    ? TextButton.icon(
                        icon: Icon(Icons.photo, color: Colors.white),
                        label: Text('Pick Image', style: TextStyle(color: Colors.white)),
                        onPressed: _pickImage,
                        style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                    : Image.file(_image!),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: InkWell(
                    onTap: _submitForm,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Submit',
                          style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
