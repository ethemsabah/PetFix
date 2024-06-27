import 'dart:io';
import 'package:flutter/material.dart';
import 'package:petpix/Components/appbar.dart';
import 'package:petpix/backend/datahelper.dart';
import 'package:petpix/pages/maching/Likedanimals.dart';

class AnimalDetailPage extends StatefulWidget {
  final Map<String, dynamic> animal;

  AnimalDetailPage({required this.animal});

  @override
  _AnimalDetailPageState createState() => _AnimalDetailPageState();
}

class _AnimalDetailPageState extends State<AnimalDetailPage> {
  bool _liked = false;
  List<Map<String, dynamic>> likedAnimals = [];

  @override
  void initState() {
    super.initState();
    _checkIfLiked();
  }

Future<void> _checkIfLiked() async {
  final liked = await DatabaseHelper().isPhotoLikedByUser(1, widget.animal['id']);
  setState(() {
    _liked = liked;
    if (_liked) {
      likedAnimals.add(widget.animal);
    }
  });
}


  Future<void> _toggleLike() async {
    if (_liked) {
      await DatabaseHelper().deleteLike(1, widget.animal['id']); // Beğeni kaldır
      setState(() {
        likedAnimals.removeWhere((animal) => animal['id'] == widget.animal['id']); // likedAnimals listesinden kaldır
        _liked = false; // _liked durumunu güncelle
      });
    } else {
      await DatabaseHelper().insertLike(1, widget.animal['id']); // Beğeni ekle
      setState(() {
        likedAnimals.add(widget.animal); // Beğenilen hayvanı likedAnimals listesine ekle
        _liked = true; // _liked durumunu güncelle
      });
    }
  }

  void _goToLikedAnimalsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LikedAnimalsPage(likedAnimals: likedAnimals), // LikedAnimalsPage' e likedAnimals listesini geçir
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.orange.shade100, Colors.orange.shade200],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Card(
                            elevation: 4,
                            margin: EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: widget.animal['image_path'] != null
                                  ? Image.file(
                                      File(widget.animal['image_path']),
                                      height: 300,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    )
                                  : Image.asset(
                                      'assets/images/default_animal.png',
                                      height: 300,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      _liked ? Icons.favorite : Icons.favorite_border,
                                      color: _liked ? Colors.red : Colors.black,
                                    ),
                                    onPressed: _toggleLike,
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Hayvan Detayları',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Hayvan Türü: ${widget.animal['animal_type']}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Cins: ${widget.animal['breed']}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Yaş: ${widget.animal['age']}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Cinsiyet: ${widget.animal['gender']}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                'Açıklama',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '${widget.animal['description']}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _goToLikedAnimalsPage,
              child: Text(
                'Beğenilen Hayvanlar',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
