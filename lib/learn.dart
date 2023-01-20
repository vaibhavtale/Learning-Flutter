import 'dart:ffi';

import 'package:flutter/material.dart';

class learnFlutter extends StatefulWidget {
  const learnFlutter({Key? key}) : super(key: key);

  @override
  State<learnFlutter> createState() => _learnFlutterState();
}

class _learnFlutterState extends State<learnFlutter> {
  bool isSwitch = false;
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter Fast"),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Hey Aurthur');
              },
              icon: Icon(Icons.info_outline)
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset("images/virat.png"),
          SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.red,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            color: Colors.blueAccent,
            width: double.infinity,
            child: const Center(
              child: Text(
                "This is my text",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitch ? Colors.lightBlueAccent : Colors.green,
            ),
            onPressed: () {
              debugPrint('Elevated has been pressed');
            },
            child: Text('Elevated Button'),
          ),
          OutlinedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitch ? Colors.pinkAccent : Colors.lightBlueAccent,
            ),
            onPressed: () {
              debugPrint('outline has been pressed');
            },
            child: Text('OutLined Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Elevated has been pressed');
            },
            child: Text('Text Button'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('this is a row');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.copyright_outlined,
                  color: Colors.redAccent,
                ),
                Text('Row Widget'),
                Icon(
                  Icons.email_outlined,
                  color: Colors.redAccent,
                )
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              }),
          Checkbox(
              value: isCheck,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheck = newBool;
                });
              })
        ],
      ),
    );
  }
}
