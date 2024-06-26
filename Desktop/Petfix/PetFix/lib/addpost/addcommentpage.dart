
import 'package:flutter/material.dart';
import 'package:petpix/Components/appbar.dart';

class AddCommentPage extends StatefulWidget {
  final int postId;
  final Function(int, String) addCommentCallback;

  AddCommentPage({required this.postId, required this.addCommentCallback});

  @override
  _AddCommentPageState createState() => _AddCommentPageState();
}

class _AddCommentPageState extends State<AddCommentPage> {
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: commentController,
              decoration: InputDecoration(
                labelText: 'Yorum',
                labelStyle: TextStyle(
                    color: Colors.orange), // Etiket rengini turuncu yap
              ),
              maxLines: null, // Birden fazla satıra izin ver
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                widget.addCommentCallback(
                    widget.postId, commentController.text);
                Navigator.pop(context); // Geri dön
              },
              child: Text('Yorum Yap'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Buton rengini turuncu yap
                textStyle:
                    TextStyle(color: Colors.white), // Yazı rengini beyaz yap
              ),
            ),
          ],
        ),
      ),
    );
  }
}