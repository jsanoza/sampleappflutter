import 'package:basiccodes/navigation/pushnavigation.dart';
import 'package:basiccodes/navigation/pushreturnnavigation.dart';
import 'package:basiccodes/navigation/returnnavigation.dart';
import 'package:basiccodes/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../sample/sample.dart';
import 'sendnavigation.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  TextEditingController textEditingController1 = TextEditingController();
  String text = 'Empty';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const PushNavigation()),
                      // );
                      // Get.to(const PushNavigation());

                      Get.offAll(const ExampleState());
                    },
                    child: const Text('Push Navigation'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    Text("Type string to send:"),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10),
                child: TextField(
                  controller: textEditingController1,
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => SendData(
                            datasent: textEditingController1.text,
                          ),
                        ),
                      );
                    },
                    child: const Text('Push and Send Data Navigation'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(
                  children: [
                    Text("Returned String:"),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.black,
                    ),
                    onPressed: () async {
                      final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReturnNavigation(),
                          ));

                      setState(() {
                        text = result;
                      });
                    },
                    child: const Text('Push and Return Data Navigation'),
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
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.black,
                    ),
                    onPressed: () {
                      // Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //     builder: (BuildContext context) =>
                      //         const PushNoReturn()));

                      Get.offAll(const ExampleState());
                    },
                    child: const Text('Push with no Return Navigation'),
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
