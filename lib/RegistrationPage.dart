import 'package:flutter/material.dart';
import 'package:flutter_lab_6/Authentication.dart';
import 'package:flutter_lab_6/LoginUser.dart';

class RegistrationPage extends StatefulWidget 
{
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> 
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
            const Text('Registration Page', style: TextStyle(fontSize: 30.0),),
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
            ElevatedButton
            (
              child: const Text('Register'),
              // onPressed: () {},
              onPressed: () async 
              {
                dynamic result = await _auth.register(LoginUser(email: _email.text,password: _password.text));
                if (result.uid == null) //null means unsuccessfull authentication
                {
                  // ignore: use_build_context_synchronously
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
              },
            ),
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