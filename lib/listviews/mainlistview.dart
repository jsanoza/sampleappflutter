import 'package:flutter/material.dart';

import '../secondpage.dart';

class MainListview extends StatefulWidget {
  const MainListview({Key? key}) : super(key: key);

  @override
  State<MainListview> createState() => _MainListviewState();
}

class _MainListviewState extends State<MainListview> {
  final List<String> entries = <String>['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Views"),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const SecondPage()));
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 100,
            //   child: ListView.builder(
            //     padding: const EdgeInsets.all(8),
            //     itemCount: entries.length,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Container(
            //         height: 50,
            //         // color: Colors.amber[colorCodes[index]],
            //         child: Center(child: Text('Entry ${entries[index]}')),
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
