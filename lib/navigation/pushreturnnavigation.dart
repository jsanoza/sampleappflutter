import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../sample/sample_controller.dart';

class PushNoReturn extends StatefulWidget {
  const PushNoReturn({Key? key}) : super(key: key);

  @override
  State<PushNoReturn> createState() => _PushNoReturnState();
}

class _PushNoReturnState extends State<PushNoReturn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Try to go back now."),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  primary: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go Back'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
