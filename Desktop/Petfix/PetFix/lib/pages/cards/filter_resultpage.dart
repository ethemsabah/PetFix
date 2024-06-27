import 'package:flutter/material.dart';

class FilterResultPage extends StatelessWidget {
  final List<Map<String, dynamic>> filteredResults;

  const FilterResultPage({Key? key, required this.filteredResults}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filtered Results'),
      ),
      body: PageView.builder(
        itemCount: filteredResults.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  filteredResults[index]['image'],
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        filteredResults[index]['title'],
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text('Age: ${filteredResults[index]['age']}'),
                      Text('Gender: ${filteredResults[index]['gender']}'),
                      Text('Breed: ${filteredResults[index]['breed']}'),
                      Text('Color: ${filteredResults[index]['color']}'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



