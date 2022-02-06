import 'package:brew_app/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        appBar: AppBar(
          backgroundColor: Colors.brown[400],
          elevation: 0,
          title: Text("Sign In To Brew App"),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: ElevatedButton(
                child: Text("SIGN IN ANON"),
                onPressed: () async {
                  dynamic result = await _auth.signInAnon();
                  if (result == "ERROR") {
                    print("ERROR SIGNING IN");
                  } else {
                    print("SIGNED IN");
                    print(result.uid);
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.brown[300],
                ))));
  }
}
