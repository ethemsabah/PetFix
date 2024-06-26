import 'package:flutter/material.dart';
import 'package:petpix/backend/sqlite.dart';
import 'package:petpix/backend/usermodel.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Database Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _addUser,
              child: Text('Add User'),
            ),
            ElevatedButton(
              onPressed: _showUsers,
              child: Text('Show Users'),
            ),
          ],
        ),
      ),
    );
  }

  void _addUser() async {
    final newUser = User(id: 0, username: 'JohnDoe', email: 'johndoe@example.com');
    final user = await UserDatabase.instance.createUser(newUser);
    print('New user created: ${user.username}');
  }

  void _showUsers() async {
    final users = await UserDatabase.instance.readAllUsers();
    for (var user in users) {
      print('User: ${user.username}, Email: ${user.email}');
    }
  }
}
