
import 'package:flutter/material.dart';
import 'package:petpix/Components/color.dart';

class EditCommentPage extends StatefulWidget {
  final Map<String, dynamic> comment;

  EditCommentPage({required this.comment});

  @override
  _EditCommentPageState createState() => _EditCommentPageState();
}

class _EditCommentPageState extends State<EditCommentPage> {
  TextEditingController commentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    commentController.text = widget.comment['comment'] ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yorumu Düzenle'),
      ),
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
                    color: primaryColor), 
              ),
              maxLines: null, 
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    commentController.text); 
              },
              child: Text('Yorumu Güncelle'),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor, 
                textStyle:
                    TextStyle(color: Colors.white), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
