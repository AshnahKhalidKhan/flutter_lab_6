import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab_6/Authentication.dart';
import 'package:flutter_lab_6/FirebaseUser.dart';
import 'package:flutter_lab_6/LoginUser.dart';
import 'package:flutter_lab_6/Services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInPage extends StatefulWidget 
{
  const GoogleSignInPage({super.key});

  @override
  State<GoogleSignInPage> createState() => _GoogleSignInPageState();
}

class _GoogleSignInPageState extends State<GoogleSignInPage> 
{
  final AuthService _auth = AuthService();
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() 
  {
    // Clean up the controller when the widget is disposed.
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
            const Text('Google Sign In Page', style: TextStyle(fontSize: 30.0),),
            ElevatedButton.icon
            (
              onPressed: () async
              {
                FirebaseUser user = await _auth.register
                (
                  LoginUser
                  (
                    email: _email.text,
                    password: _password.text
                  )
                );
                if (user != null)
                {
                  Text('User Successflly registered');
                }
                // FirebaseService service = new FirebaseService();
                try 
                {
                  // dynamic result = await service.signInwithGoogle();
                  // showDialog
                  // (
                  //   context: context,
                  //   builder: (context) 
                  //   {
                  //     return AlertDialog
                  //     (
                  //       content: Text(result.code),
                  //     );
                  //   }
                  // );
                  FirebaseUser user = await _auth.register
                  (
                    LoginUser
                    (
                      email: _email.text,
                      password: _password.text
                    )
                  );
                  if (user != null)
                  {
                    Text('User Successflly registered');
                  }
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
              icon: Icon(Icons.g_mobiledata_rounded), 
              label: Text('Sign In With Google')
            ),
            TextField
            (
              decoration: const InputDecoration
              (
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
              controller: _email,
            ),
            TextField
            (
              obscureText: true,
              decoration: const InputDecoration
              (
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              controller: _password,
            ),
            const TextField
            (
              obscureText: true,
              decoration: InputDecoration
              (
                border: OutlineInputBorder(),
                labelText: 'Confirm Password',
              )
            ),
            // ElevatedButton
            // (
            //   child: const Text('Register'),
            //   // onPressed: () {},
            //   onPressed: () async 
            //   {
            //     dynamic result = await _auth.register(LoginUser(email: _email.text, password: _password.text));
            //     if (result.uid == null) //null means unsuccessfull authentication
            //     {
            //       // ignore: use_build_context_synchronously
            //       showDialog
            //       (
            //         context: context,
            //         builder: (context) 
            //         {
            //           return AlertDialog
            //           (
            //             content: Text(result.code),
            //           );
            //         }
            //       );
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

// class SignInPage extends StatefulWidget 
// {
//   const SignInPage({super.key});

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> 
// {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold
//     (
//       body: Padding
//       (
//         padding: EdgeInsets.all(30.0),
//         child: Column
//         (
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: 
//           [
//             const Text('SignIn Page', style: TextStyle(fontSize: 30.0),),
//             const TextField
//             (
//               decoration: InputDecoration
//               (
//                 border: OutlineInputBorder(),
//                 labelText: 'Email',
//               )
//             ),
//             const TextField
//             (
//               obscureText: true,
//               decoration: InputDecoration
//               (
//                 border: OutlineInputBorder(),
//                 labelText: 'Password',
//               )
//             ),
//             ElevatedButton
//             (
//               child: Text('Sign In'),
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }