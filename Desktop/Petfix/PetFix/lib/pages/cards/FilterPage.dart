import 'package:flutter/material.dart';
import 'package:petpix/pages/cards/filter_resultpage.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  List<Map<String, dynamic>> filterPosts = [
    {
      'image': 'model/assets/1.jpg',
      'title': 'Şimşek',
      'Animal Species': 'Bird', // Animal Species eklendi
      'age': '5',
      'gender': 'Male',
      'breed': 'Hawk',
      'color': 'Brown',
    },
    {
      'image': 'model/assets/2.jpg',
      'title': 'Behlül',
      'Animal Species': 'Cat', // Animal Species eklendi
      'age': '4',
      'gender': 'Female',
      'breed': 'Alley Cat',
      'color': 'Very Colorful',
    },
    {
      'image': 'model/assets/3.jpg',
      'title': 'Mırmır',
      'Animal Species' : 'Cat',
      'age': '6',
      'gender': 'Male',
      'breed': 'Ankara Cat',
      'color': 'White',
    },
     {
      'image': 'model/assets/4.jpg',
      'title': 'Yaramaz',
      'Animal Species' : 'Cat',
      'age': '9',
      'gender': 'Male',
      'breed': 'Alley Cat',
      'color': 'Very Colorful',
    },
    {
      'image': 'model/assets/5.jpg',
      'title': 'Mırrık',
      'Animal Species' : 'Cat',
      'age': '2',
      'gender': 'Male',
      'breed': 'Ankara Cat',
      'color': 'White',
    },
    {
      'image': 'model/assets/6.jpg',
      'title': 'Paşa',
      'Animal Species' : 'Dog',
      'age': '7',
      'gender': 'Male',
      'breed': 'Alley Dog',
      'color': 'Cream',
    },
    {
      'image': 'model/assets/7.jpg',
      'title': 'Ceku',
      'Animal Species' : 'Dog',
      'age': '3',
      'gender': 'Male',
      'breed': 'Chihuahua',
      'color': 'Cream',
    },
    {
      'image': 'model/assets/8.jpg',
      'title': 'Pamuk',
      'Animal Species' : 'Cat',
      'age': '8',
      'gender': 'Female',
      'breed': 'Ankara Cat',
      'color': 'White',
    },
    {
      'image': 'model/assets/9.jpg',
      'title': 'Fındık',
      'Animal Species' : 'Dog',
      'age': '1',
      'gender': 'Male',
      'breed': 'Alley Dog',
      'color': 'Cream',
    },
    {
      'image': 'model/assets/10.jpg',
      'title': 'Behlül',
      'Animal Species' : 'Cat',
      'age': '3',
      'gender': 'Female',
      'breed': 'Scottish Fold',
      'color': 'Grey',
    },
    {
      'image': 'model/assets/11.jpg',
      'title': 'Sarı',
      'Animal Species' : 'Cat',
      'age': '1',
      'gender': 'Female',
      'breed': 'Ankara Cat',
      'color': 'White',
    },
    {
      'image': 'model/assets/12.jpg',
      'title': 'Tosun',
      'Animal Species' : 'Cat',
      'age': '10',
      'gender': 'Male',
      'breed': 'Ankara Cat',
      'color': 'White',
    },
    {
      'image': 'model/assets/13.jpg',
      'title': 'Şans',
      'Animal Species' : 'Cat',
      'age': '12',
      'gender': 'Male',
      'breed': 'Scottish Fold',
      'color': 'Grey',
    },
    {
      'image': 'model/assets/14.jpg',
      'title': 'Kara',
      'Animal Species' : 'Cat',
      'age': '4',
      'gender': 'Female',
      'breed': 'Ankara Cat',
      'color': 'White',
    },
    {
      'image': 'model/assets/15.jpg',
      'title': 'Haylaz',
      'Animal Species' : 'Dog',
      'age': '7',
      'gender': 'Female',
      'breed': 'Alley Dog',
      'color': 'Very Colorful',
    },
    {
      'image': 'model/assets/16.jpg',
      'title': 'Jesse',
      'Animal Species' : 'Cat',
      'age': '1',
      'gender': 'Female',
      'breed': 'Scottish Fold',
      'color': 'Krem',
      }
  ];

  String _selectedBreed = 'All';
  int _selectedAgeMin = 0;
  int _selectedAgeMax = 20; // Varsayılan olarak 20 yaş ve altını göster
  String _selectedGender = 'All';
  String _selectedColor = 'All';
  String _selectedAnimalSpecies = 'All'; // Eklenen Animal Species

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Animal Species:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: _selectedAnimalSpecies, // Değer buraya eklendi
              onChanged: (newValue) {
                setState(() {
                  _selectedAnimalSpecies = newValue!;
                });
              },
              items: <String>[
                'All',
                'Bird', // Bird eklendi
                'Cat',
                'Dog',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Age:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text('Min: $_selectedAgeMin'),
                SizedBox(width: 20),
                Slider(
                  min: 0,
                  max: 20,
                  divisions: 20,
                  value: _selectedAgeMin.toDouble(),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedAgeMin = newValue.toInt();
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text('Max: $_selectedAgeMax'),
                SizedBox(width: 20),
                Slider(
                  min: 0,
                  max: 20,
                  divisions: 20,
                  value: _selectedAgeMax.toDouble(),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedAgeMax = newValue.toInt();
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Gender:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: _selectedGender,
              onChanged: (newValue) {
                setState(() {
                  _selectedGender = newValue!;
                });
              },
              items: <String>[
                'All',
                'Male',
                'Female'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Color:', // Renk başlığı eklendi
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: _selectedColor,
              onChanged: (newValue) {
                setState(() {
                  _selectedColor = newValue!;
                });
              },
              items: <String>[
                'All',
                'Brown',
                'Very Colorful',
                'White',
                'Cream',
                'Grey',
                'Krem' // Eklenen bir renk seçeneği
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                List<Map<String, dynamic>> filteredResults = filterPosts.where((post) {
                  bool matchesBreed = _selectedBreed == 'All' || post['breed'] == _selectedBreed;
                  bool matchesAge = int.parse(post['age']) >= _selectedAgeMin && int.parse(post['age']) <= _selectedAgeMax;
                  bool matchesGender = _selectedGender == 'All' || post['gender'] == _selectedGender;
                  bool matchesColor = _selectedColor == 'All' || post['color'] == _selectedColor;
                  bool matchesAnimalSpecies = _selectedAnimalSpecies == 'All' || post['Animal Species'] == _selectedAnimalSpecies; // Animal Species eklendi

                  return matchesBreed && matchesAge && matchesGender && matchesColor && matchesAnimalSpecies; // Animal Species kontrolü eklendi
                }).toList();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FilterResultPage(filteredResults: filteredResults),
                  ),
                );
              },
              child: Text('Apply Filters'),
            ),
          ],
        ),
      ),
    );
  }
}

