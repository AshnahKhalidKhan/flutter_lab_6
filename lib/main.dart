import 'package:flutter/material.dart';
import 'package:flutter_lab_6/Core/Model/user_model.dart';
import 'package:flutter_lab_6/User/APIPageState.dart';
import 'package:flutter_lab_6/User/user_view.dart';
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

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      // home: UserModelWidget()
      home: APIPageState()
    );
  }
}