import 'package:flutter/material.dart';
import 'package:flutter_lab_6/Authentication.dart';
import 'package:flutter_lab_6/FirebaseUser.dart';
import 'package:flutter_lab_6/RegistrationPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainApp());
}

// void main() 
// {
//   runApp(const MainApp());
// }

class MainApp extends StatelessWidget 
{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return StreamProvider<FirebaseUser?>.value
    (
      value: AuthService().user,
      initialData: null,
      child: MaterialApp
      (
        home: RegistrationPage(),
      )
    );
  }
}


