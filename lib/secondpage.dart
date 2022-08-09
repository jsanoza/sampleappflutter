import 'package:basiccodes/buttons/mainbuttons.dart';
import 'package:basiccodes/navigation/mainnavigation.dart';
import 'package:flutter/material.dart';

import 'listviews/mainlistview.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Flutter Widgets",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MainNavigation()));
                    },
                    child: const Text('Navigation'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.red,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => MainButtons(),
                        ),
                      );
                    },
                    child: const Text('Buttons'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const MainListview()));
                    },
                    child: const Text('List'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.pink,
                    ),
                    onPressed: () {},
                    child: const Text('Aligning Controls'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
