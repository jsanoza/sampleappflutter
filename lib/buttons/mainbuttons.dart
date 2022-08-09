import 'package:flutter/material.dart';

import '../secondpage.dart';

class MainButtons extends StatefulWidget {
  const MainButtons({Key? key}) : super(key: key);

  @override
  State<MainButtons> createState() => _MainButtonsState();
}

class _MainButtonsState extends State<MainButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const SecondPage()));
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text('Button'),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('Simple Button'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(50)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 30))),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: const Text('Button'),
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text('Fixed Width x Height'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(240, 80),
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Text("Custom Button"),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          GestureDetector(
            onTap: () {
              final snackBar = SnackBar(
                content: Text('Custom'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 240,
                  color: Colors.yellow,
                  child: Center(
                    child: Text("Custom"),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
