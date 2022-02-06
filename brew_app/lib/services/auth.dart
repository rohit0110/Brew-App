import 'package:firebase_auth/firebase_auth.dart';
import 'package:brew_app/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user obj based on fbu

  UserForApp? _userFromFirebaseUser(User? user) {
    return user != null ? UserForApp(uid: user.uid) : null;
  }

  Stream<UserForApp?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  //sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return "ERROR";
    }
  }

  //sign in email/pw

  //register with email/pw

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
