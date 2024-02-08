import 'package:flutter/material.dart';
import 'package:flutter_lab_6/User/stateNotifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:provider/provider.dart' as p;

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
      body: Consumer
      (
        builder: (context, ref, child) 
        {
          final notifer = ref.watch(userStateNotifierProvider.notifier);
          // final state = watch(userStateNotifierProvider.state);
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
            // initial: () => const Center( child: Text('initial')),
            orElse: () => Center
            (
              child: ElevatedButton
              (
                child: const Text
                (
                  "Get Singler User",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () 
                {
                  // userStateNotifierProvider.getUser();
                },
              ),
            ));
        }
      ),
    );
  }
}
