import 'dart:io';

import 'package:flutter/material.dart';
import 'package:petpix/Components/appbar.dart';
import 'package:petpix/backend/datahelper.dart';
import 'package:petpix/pages/maching/Add_animalpage.dart';
import 'package:petpix/pages/maching/Updateanimalpage.dart';
import 'package:petpix/pages/maching/AnimalDetailPage.dart'; // AnimalDetailPage ekledik

class AnimalListPage extends StatefulWidget {
  @override
  _AnimalListPageState createState() => _AnimalListPageState();
}

class _AnimalListPageState extends State<AnimalListPage> {
  List<Map<String, dynamic>> matches = [];
  final dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _fetchMatches();
  }

  Future<void> _fetchMatches() async {
    final fetchedMatches = await dbHelper.getMatches();
    setState(() {
      matches = fetchedMatches;
    });
  }

  Future<void> _deleteAnimal(int animalId) async {
    await dbHelper.deleteMatch(animalId);
    _fetchMatches();
  }

  void _navigateToDetailPage(Map<String, dynamic> animal) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AnimalDetailPage(animal: animal),
      ),
    ).then((_) {
      _fetchMatches();
    });
  }

  void _navigateToUpdatePage(Map<String, dynamic> animal) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UpdateAnimalPage(animal: animal),
      ),
    ).then((_) {
      _fetchMatches();
    });
  }

  void _navigateToAddAnimalPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddAnimalPage()),
    ).then((_) {
      _fetchMatches();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _navigateToAddAnimalPage,
        label: Text('Add New Animal'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.orange.shade100,
      ),
      body: matches.isEmpty
          ? Center(child: Text('No matches found.'))
          : ListView.builder(
              itemCount: matches.length,
              itemBuilder: (context, index) {
                final match = matches[index];
                return Dismissible(
                  key: Key(match['id'].toString()),
                  background: Container(
                    color: Colors.red,
                    child: Icon(Icons.delete, color: Colors.white),
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20.0),
                  ),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    _deleteAnimal(match['id']);
                  },
                  child: Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.orange.shade100,
                    child: ListTile(
                      onTap: () {
                        _navigateToDetailPage(match); // Detay sayfasına git
                      },
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: match['image_path'] != null && File(match['image_path']).existsSync()
                            ? FileImage(File(match['image_path']))
                            : AssetImage('assets/images/default_animal.png') as ImageProvider,
                      ),
                      title: Text(
                        match['animal_type'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(match['breed']),
                      trailing: IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          _navigateToUpdatePage(match); // Düzenleme sayfasına git
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
