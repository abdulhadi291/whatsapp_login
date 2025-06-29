import 'package:flutter/material.dart';

class TempView extends StatelessWidget {
  const TempView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "hello",
            style: TextStyle(color: Colors.blueGrey),
          ),
          Text("hello"),
          Text("helo"),
          Container(
            child: Text(
              "hello",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            height: 100,
            width: 100,
            decoration:
                BoxDecoration(color: Colors.lightBlue, shape: BoxShape.circle),
          )
        ],
      ),
    );
  }
}