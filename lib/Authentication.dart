import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_lab_6/FirebaseUser.dart';
import 'package:flutter_lab_6/LoginUser.dart';

class AuthService 
{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInEmailPassword(LoginUser user) async 
  {
    try
    {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword
      (
        email: user.email.toString(),
        password: user.password.toString()
      );
      User? user1 = userCredential.user;
      return _firebaseUser(user1);
    } on FirebaseAuthException catch (e) 
    {
      return FirebaseUser
      (
        code: e.code, 
        uid: null
      );
    }
  }

  FirebaseUser? _firebaseUser(User? user) 
  {
    return user != null ? FirebaseUser(uid: user.uid) : null;
  }
}