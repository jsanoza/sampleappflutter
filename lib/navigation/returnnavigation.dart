import 'package:flutter/material.dart';

class ReturnNavigation extends StatefulWidget {
  const ReturnNavigation({Key? key}) : super(key: key);

  @override
  State<ReturnNavigation> createState() => _ReturnNavigationState();
}

class _ReturnNavigationState extends State<ReturnNavigation> {
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text("Type string to send:"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              controller: textFieldController,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                  primary: Colors.black,
                ),
                onPressed: () {
                  String textToSendBack = textFieldController.text;
                  Navigator.pop(context, textToSendBack);
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
