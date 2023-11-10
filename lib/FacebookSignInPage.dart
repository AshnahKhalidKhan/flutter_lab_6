import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab_6/Authentication.dart';
import 'package:flutter_lab_6/FirebaseUser.dart';
import 'package:flutter_lab_6/LoginUser.dart';
import 'package:flutter_lab_6/Services.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class FacebookSignInPage extends StatefulWidget 
{
  const FacebookSignInPage({super.key});

  @override
  State<FacebookSignInPage> createState() => _FacebookSignInPageState();
}

class _FacebookSignInPageState extends State<FacebookSignInPage> 
{
  final AuthService _auth = AuthService();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() 
  {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Padding
      (
        padding: EdgeInsets.all(30.0),
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: 
          [
            const Text('Facebook Sign In Page', style: TextStyle(fontSize: 30.0),),
            ElevatedButton.icon
            (
              onPressed: () async
              {
                FirebaseService service = new FirebaseService();
                try 
                {
                  dynamic result = await service.signInwithGoogle();
                  showDialog
                  (
                    context: context,
                    builder: (context) 
                    {
                      return AlertDialog
                      (
                        content: Text(result.code),
                      );
                    }
                  );
                }
                catch(e)
                {
                  if(e is FirebaseAuthException)
                  {
                    showDialog
                    (
                      context: context,
                      builder: (context) 
                      {
                        return AlertDialog
                        (
                          content: Text(e.code),
                        );
                      }
                    );
                  }
                }
              }, 
              icon: Icon(Icons.facebook), 
              label: Text('Sign In With FB')
            )
          ],
        ),
      ),
    );
  }
}