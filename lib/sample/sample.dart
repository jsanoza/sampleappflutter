import 'package:basiccodes/sample/sample_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExampleState extends StatelessWidget {
  const ExampleState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SampleController sampleController = Get.put(SampleController());

    List<String> hello = ["1", "2", "3", "4"];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sampleController.changeText();
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: hello.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(hello[index] + "Hello"),
              );
            }),
      ),
    );
  }
}
