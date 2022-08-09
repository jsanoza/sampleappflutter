import 'package:flutter/material.dart';

class PushNavigation extends StatefulWidget {
  const PushNavigation({Key? key}) : super(key: key);

  @override
  State<PushNavigation> createState() => _PushNavigationState();
}

class _PushNavigationState extends State<PushNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text("Press button to go back / pop"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
