import 'package:flutter/material.dart';
import 'package:petpix/backend/datahelper.dart';
import 'package:petpix/Components/appbar.dart';

class UpdateAnimalPage extends StatefulWidget {
  final Map<String, dynamic> animal;

  UpdateAnimalPage({required this.animal});

  @override
  _UpdateAnimalPageState createState() => _UpdateAnimalPageState();
}

class _UpdateAnimalPageState extends State<UpdateAnimalPage> {
  final _formKey = GlobalKey<FormState>();
  String _animalType = '';
  String _breed = '';
  int _age = 0;
  String _gender = '';
  String _description = '';

  @override
  void initState() {
    super.initState();
    _animalType = widget.animal['animal_type'];
    _breed = widget.animal['breed'];
    _age = widget.animal['age'];
    _gender = widget.animal['gender'];
    _description = widget.animal['description'];
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      await DatabaseHelper().updateMatch(
        widget.animal['id'],
        _animalType,
        _breed,
        _age,
        _gender,
        _description,
      );
      Navigator.pop(context, true); // Navigate back with result to refresh list
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                initialValue: _animalType,
                decoration: InputDecoration(
                  labelText: 'Animal Type',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter animal type';
                  }
                  return null;
                },
                onSaved: (value) {
                  _animalType = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                initialValue: _breed,
                decoration: InputDecoration(
                  labelText: 'Breed',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter breed';
                  }
                  return null;
                },
                onSaved: (value) {
                  _breed = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                initialValue: _age.toString(),
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter age';
                  }
                  return null;
                },
                onSaved: (value) {
                  _age = int.parse(value!);
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                initialValue: _gender,
                decoration: InputDecoration(
                  labelText: 'Gender',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter gender';
                  }
                  return null;
                },
                onSaved: (value) {
                  _gender = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                initialValue: _description,
                decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter description';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value!;
                },
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Update Animal'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
