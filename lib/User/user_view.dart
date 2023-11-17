import 'package:flutter/material.dart';

class UserModelWidget extends StatefulWidget 
{
  UserModelWidget({super.key});


  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() 
  {
    // Clean up the controller when the widget is disposed.
    _email.dispose();
    _password.dispose();
    // super.dispose();
  }


  @override
  State<UserModelWidget> createState() => _UserModelWidgetState();
}

class _UserModelWidgetState extends State<UserModelWidget> 
{
  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  void dispose() 
  {
    // Clean up the controller when the widget is disposed.
    _email.dispose();
    _password.dispose();
    // super.dispose();
  }
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
            const Text('Registration Page Flutter Lab 7', style: TextStyle(fontSize: 30.0),),
            ElevatedButton.icon
            (
              onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}