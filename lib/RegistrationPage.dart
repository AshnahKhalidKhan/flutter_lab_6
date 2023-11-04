import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget 
{
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> 
{
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
            const Text('Registration Page', style: TextStyle(fontSize: 30.0),),
            const TextField
            (
              decoration: InputDecoration
              (
                border: OutlineInputBorder(),
                labelText: 'Email',
              )
            ),
            const TextField
            (
              obscureText: true,
              decoration: InputDecoration
              (
                border: OutlineInputBorder(),
                labelText: 'Password',
              )
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
            ElevatedButton
            (
              child: Text('Register'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SignInPage extends StatefulWidget 
{
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> 
{
  @override
  Widget build(BuildContext context) {
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
            const Text('SignIn Page', style: TextStyle(fontSize: 30.0),),
            const TextField
            (
              decoration: InputDecoration
              (
                border: OutlineInputBorder(),
                labelText: 'Email',
              )
            ),
            const TextField
            (
              obscureText: true,
              decoration: InputDecoration
              (
                border: OutlineInputBorder(),
                labelText: 'Password',
              )
            ),
            ElevatedButton
            (
              child: Text('Sign In'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}