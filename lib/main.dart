import 'package:flutter/material.dart';
// import 'package:flutter_lab_6/Authentication.dart';
// import 'package:flutter_lab_6/FacebookSignInPage.dart';
// import 'package:flutter_lab_6/FirebaseUser.dart';
// import 'package:flutter_lab_6/RegistrationPage.dart';
// import 'package:flutter_lab_6/GoogleSignInPage.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_lab_6/firebase_options.dart';
// import 'package:provider/provider.dart';

// void main() async
// {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp
//   (
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(MainApp());
// }

// // void main() 
// // {
// //   runApp(const MainApp());
// // }

// class MainApp extends StatelessWidget 
// {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) 
//   {
//     return StreamProvider<FirebaseUser?>.value
//     (
//       value: AuthService().user,
//       initialData: null,
//       child: MaterialApp
//       (
//         // home: RegistrationPage(),
//         home: GoogleSignInPage(),
//         // home: FacebookSignInPage()
//       )
//     );
//   }
// }

void main() 
{
  runApp(MainApp());
}

class MainApp extends StatelessWidget 
{
  MainApp({super.key});

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() 
  {
    // Clean up the controller when the widget is disposed.
    _email.dispose();
    _password.dispose();
  }


  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      home: Scaffold
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
              onPressed: () {},
              icon: Icon(Icons.g_mobiledata_rounded), 
              label: Text('Registration Page')
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
          ],
        ),
      ),
    )
    );
  }
}