import 'package:brew_app/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      appBar: AppBar(
        title: Text("BREW APP"),
        backgroundColor: Colors.brown[400],
        elevation: 0,
        actions: <Widget>[
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.brown[400],
              ),
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text("Log out"))
        ],
      ),
    );
  }
}
