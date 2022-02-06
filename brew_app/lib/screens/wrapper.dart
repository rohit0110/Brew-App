import 'package:brew_app/models/user.dart';
import 'package:brew_app/screens/authenticate/authenticate.dart';
import 'package:brew_app/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return either home or authenticate widget
    final user = Provider.of<UserForApp?>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
