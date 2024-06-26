import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petpix/Components/appbar.dart';
import 'package:petpix/Components/color.dart';
import 'package:petpix/Components/texts.dart';
import 'package:petpix/backend/datahelper.dart';

class AdoptionPage extends StatefulWidget {
  @override
  _AdoptionPageState createState() => _AdoptionPageState();
}

class _AdoptionPageState extends State<AdoptionPage> {
  TextEditingController _cityController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _breedController = TextEditingController();
  List<Map<String, dynamic>> petPosts = [];
  File? _selectedImage;
  String? _selectedColor;
  final List<String> _colors = ['Siyah', 'Beyaz', 'Kahverengi', 'Gri', 'Kırmızı'];
  final DatabaseHelper dbHelper = DatabaseHelper();

  @override
  void initState() {
    super.initState();
    _loadPetPosts();
  }

  Future<void> _loadPetPosts() async {
    List<Map<String, dynamic>> posts = await dbHelper.getMatches();
    setState(() {
      petPosts = posts;
    });
  }

  Future<void> _savePetPost(Map<String, dynamic> post) async {
    int userId = 1; 
    await dbHelper.insertMatch(
      userId,
      post['animal_type'],
      post['breed'],
      post['age'],
      post['gender'],
      post['description'],
    );
    _loadPetPosts();
  }

 Future<void> _updatePetPost(Map<String, dynamic> post) async {
  await dbHelper.updateMatch(
    post['id'],
    post['animal_type'],
    post['breed'],
    post['age'],
    post['gender'],
    post['description'],
  );
  _loadPetPosts();
}



  Future<void> _deletePetPost(int id) async {
    await dbHelper.deleteMatch(id);
    _loadPetPosts();
  }

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildFilterArea(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: petPosts.map((post) {
                  return buildPetPostCard(post);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showCreatePetPostForm(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildFilterArea() {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey.shade100,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: buildTextField(_cityController, 'Şehir'),
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: buildTextField(_ageController, 'Yaş'),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                child: buildTextField(_breedController, 'Irklar'),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.orange.shade300),
            ),
            onPressed: () {
              // Filtreleme işlemleri burada yapılacak
            },
            child: Text(
              'Filtrele',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPetPostCard(Map<String, dynamic> post) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Colors.orange[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: adoptionColor,
                  ),
                  onPressed: () {
                    _showMoreOptions(post);
                  },
                ),
              ],
            ),
          ),
          post['image_path'] != null
              ? Image.file(
                  File(post['image_path']),
                  height: 200.0,
                  fit: BoxFit.cover,
                )
              : Container(
                  height: 200.0,
                  color: adoptionColor,
                  child: Icon(
                    Icons.image,
                    size: 100.0,
                    color: adoptionColor,
                  ),
                ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post['animal_type'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: adoptionColor,
                  ),
                ),
                SizedBox(height: 8.0),
                buildPetInfoText('Yaş', post['age'].toString()),
                buildPetInfoText('Cinsiyet', post['gender']),
                buildPetInfoText('Irklar', post['breed']),
                buildPetInfoText('Açıklama', post['description']),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showCreatePetPostForm(BuildContext context) {
  TextEditingController _animalTypeController = TextEditingController();
  TextEditingController _breedController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  File? _newImage;

 Future<void> _pickNewImage() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

  if (image != null) {
    setState(() {
      _newImage = File(image.path); 
    });
  }
}

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.grey,
        title: Text(
          'Hayvan Sahiplendirme Gönderisi Oluştur',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTextField(_animalTypeController, 'Hayvan Türü'),
              buildTextField(_breedController, 'Irklar'),
              buildTextField(_ageController, 'Yaş'),
              buildTextField(_genderController, 'Cinsiyet'),
              buildTextField(_descriptionController, 'Açıklama'),
              SizedBox(height: 8.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: elevatedButtoncolor,
                ),
                onPressed: _pickNewImage,
                child: buildButtonText('Fotoğraf Seç'),
              ),
              _newImage != null && _newImage!.existsSync()
                  ? Image.file(
                      _newImage!,
                      height: 300.0,
                      fit: BoxFit.cover,
                    )
                  : Container(
                      color: adoptionColor,
                    ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: buildButtonText('İptal'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: elevatedButtoncolor,
            ),
            onPressed: () {
              setState(() {
                _savePetPost({
                  'animal_type': _animalTypeController.text,
                  'breed': _breedController.text,
                  'age': int.tryParse(_ageController.text) ?? 0,
                  'gender': _genderController.text,
                  'description': _descriptionController.text,
                  'image_path': _newImage?.path,
                });
                Navigator.pop(context);
                _newImage = null;
              });
            },
            child: buildButtonText('Paylaş'),
          ),
        ],
      );
    },
  );
}
 void _showMoreOptions(Map<String, dynamic> post) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Wrap(
        children: [
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Düzenle'),
            onTap: () {
              Navigator.pop(context);
              _showEditPetPostForm(post);
            },
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Sil'),
            onTap: () {
              Navigator.pop(context);
              _deletePetPost(post['id']);
            },
          ),
        ],
      );
    },
  );
}


  void _showEditPetPostForm(Map<String, dynamic> post) {
  TextEditingController _animalTypeController = TextEditingController(text: post['animal_type']);
  TextEditingController _breedController = TextEditingController(text: post['breed']);
  TextEditingController _ageController = TextEditingController(text: post['age'].toString());
  TextEditingController _genderController = TextEditingController(text: post['gender']);
  TextEditingController _descriptionController = TextEditingController(text: post['description']);
  File? _editedImage = post['image_path'] != null ? File(post['image_path']) : null;

  Future<void> _pickEditedImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _editedImage = File(image.path);
      });
    }
  }

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.grey,
        title: Text(
          'Hayvan Sahiplendirme Gönderisini Düzenle',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTextField(_animalTypeController, 'Hayvan Türü'),
              buildTextField(_breedController, 'Irklar'),
              buildTextField(_ageController, 'Yaş'),
              buildTextField(_genderController, 'Cinsiyet'),
              buildTextField(_descriptionController, 'Açıklama'),
              SizedBox(height: 8.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: elevatedButtoncolor,
                ),
                onPressed: _pickEditedImage,
                child: buildButtonText('Fotoğraf Seç'),
              ),
              _editedImage != null && _editedImage!.existsSync()
                  ? Image.file(
                      _editedImage!,
                      height: 300.0,
                      fit: BoxFit.cover,
                    )
                  : (post['image_path'] != null && File(post['image_path']).existsSync()
                      ? Image.file(
                          File(post['image_path']),
                          height: 300.0,
                          fit: BoxFit.cover,
                        )
                      : Container(
                          color: adoptionColor,
                        )),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: buildButtonText('İptal'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: elevatedButtoncolor,
            ),
            onPressed: () {
              setState(() {
                _updatePetPost({
                  'id': post['id'],
                  'animal_type': _animalTypeController.text,
                  'breed': _breedController.text,
                  'age': int.tryParse(_ageController.text) ?? 0,
                  'gender': _genderController.text,
                  'description': _descriptionController.text,
                  'image_path': _editedImage?.path,
                });
                Navigator.pop(context);
                _editedImage = null;
              });
            },
            child: buildButtonText('Güncelle'),
          ),
        ],
      );
    },
  );
}

  Widget buildTextField(TextEditingController controller, String hintText) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget buildButtonText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }

  Widget buildPetInfoText(String title, String content) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: adoptionColor),
        children: [
          TextSpan(
            text: '$title: ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: content,
          ),
        ],
      ),
    );
  }
}
