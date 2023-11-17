// import 'package:flutter/material.dart';

// class APIPageState extends StatefulWidget 
// {
//   const APIPageState({super.key});

//   @override
//   State<APIPageState> createState() => _APIPageStateState();
// }

// class _APIPageStateState extends State<APIPageState> 
// {
//   @override
//   Widget build(BuildContext context) 
//   {
//     return Scaffold
//     (
//       body: Consumer
//       (
//         builder: (context, watch, child)
//         {
//           final state = watch(userStateNotifierProvider.state);
//           return state.maybeWhen
//           (
//             loading: () => Center
//             (
//               child: CircularProgressIndicator(),
//             ),
//             success: (user) => Center
//             (
//               child: Text("${user.email}"),
//             ),
//             error: (e) => Center
//             (
//               child: Text("Error occured, $e"),
//             ),
//             orElse: () => Center
//             (
//               // child: FlatButton
//               // (
//               //   color: Colors.blue,
//               //   child Text
//               //   (
//               //     "Get Singler User",
//               //     style: TextStyle(color: Colors.white),
//               //   ),
//               //   onPressed: () {}
//               // ),
//             )
//           );
//         }
//       ),
//     );
//   }
// }