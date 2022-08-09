import 'package:flutter/material.dart';

class SendData extends StatefulWidget {
  final String datasent;

  const SendData({
    Key? key,
    required this.datasent,
  }) : super(key: key);

  @override
  State<SendData> createState() => _SendDataState();
}

class _SendDataState extends State<SendData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Sent String:"),
          SizedBox(
            height: 10,
          ),
          Text(
            widget.datasent,
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
