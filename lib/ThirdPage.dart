import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      //appBar: AppBar(
      // title: Text(widget.title),
      // ),
      body: Center(
        Container(
          Column(children: [
          child: Text(
          'Your login Successfully..!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            // backgroundColor: Colors.purple,
          ),
        ),
        ],),
        ),
        
          child: ElevatedButton(
        child: Text(
          'Your login Successfully..!',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            // backgroundColor: Colors.purple,
          ),
        ),
        onPressed: () {
          Navigator.pop(
            context,
            // MaterialPageRoute(builder: (context) => ThirdPage()),
          );
        },
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(310, 50), primary: Colors.black),
      )),
    );
  }
}
