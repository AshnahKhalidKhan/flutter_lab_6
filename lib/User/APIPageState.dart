import 'package:flutter/material.dart';
import 'package:flutter_lab_6/User/stateNotifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class APIPageState extends StatefulWidget
{
  const APIPageState({super.key});

  @override
  State<APIPageState> createState() => _APIPageStateState();
}

class _APIPageStateState extends State<APIPageState> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Consumer(builder: (context, ref, child) 
      {
        final notifer = ref.watch(userStateNotifierProvider.notifier);
        return notifer.state.maybeWhen
        (
          loading : () => const Center
          (
            child: CircularProgressIndicator(),
          ),
          success: (user) => Center
          (
            child: Text("${user.email}"),
          ),
          error: (e) => Center
          (
            child: Text("Error occurred, $e"),
          ),
          initial: () => Text('initial'),
          orElse: () => const Center
          (
            // child: FlatButton
            // (
              // color: Colors.blue,
              // child Text
              // (
                // "Get Singler User",
                // style: TextStyle(color: Colors.white),
              // ),
              // onPressed: () {}
            // ),
          ));
      }),
    );
  }
}
