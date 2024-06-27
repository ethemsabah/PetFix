import 'dart:io';
import 'package:flutter/material.dart';
import 'package:petpix/Components/appbar.dart';

class LikedAnimalsPage extends StatelessWidget {
  final List<Map<String, dynamic>> likedAnimals;

  LikedAnimalsPage({required this.likedAnimals});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        color: Colors.orange[100], 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: likedAnimals.length,
            itemBuilder: (context, index) {
              final animal = likedAnimals[index];
              ImageProvider imageProvider;
              if (animal['image_path'] != null && animal['image_path'] is String) {
                imageProvider = FileImage(File(animal['image_path']));
              } else {
                imageProvider = AssetImage('modal/assets/images/panda.jpeg');
              }

              return GestureDetector(
                onTap: () {
                },
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              animal['animal_type'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              animal['breed'],
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite, color: Colors.red),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
