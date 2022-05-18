//import 'dart:html';
//import 'ThirdPage.dart';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  //const SecondPage({Key? key, required this.title}) : super(key: key);

  //final String title;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  //bool _isVisible = false;
  bool _isHidden = true;

  //void updateStatus() {
  // setState(() {
  //  _isVisible = !_isVisible;
  // });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        //appBar: AppBar(
        // title: Text(widget.title),
        // ),
        body: Container(
          child: Center(
            //MainColumn

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    width: 390.0,
                    height: 340.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topLeft,
                        colors: [
                          //Colors.yellow,
                          Color.fromARGB(255, 52, 151, 233),
                          Color.fromARGB(255, 188, 39, 214)
                        ],
                      ),
                      //borderRadius: BorderRadius.circular(15),

                      // color: Colors.purple[800]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.music_note_rounded,
                          size: 100,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('COOL MUSIC',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              // backgroundColor: Colors.purple,
                            )),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.all(10.0),

                  //MainSizeBox

                  child: SizedBox(
                    width: 300,
                    height: 150,
                    child: Center(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'User ',
                              labelStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 1.8),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            obscureText: _isHidden,
                            decoration: InputDecoration(
                              labelText: 'Passcode',
                              labelStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),

                              // border: OutlineInputBorder(),
                              suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  _isHidden
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.purple, width: 1.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),
                // Children_4
                Container(
                  //alignment: Alignment.center,
                  //width: 310.0,
                  //height: 50.0,
                  //decoration:
                  // BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ElevatedButton(
                    child: Text(
                      'login',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        // backgroundColor: Colors.purple,
                      ),
                    ),
                    onPressed: () {},
                    //Navigator.push(
                    //context,
                    // MaterialPageRoute(builder: (context) => ThirdPage()),
                    // );
                    //},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(310, 50), primary: Colors.purple),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('forgot password?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 25,
                ),
                Text('or',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black26,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      FloatingActionButton(
                        // backgroundColor: const Color(0xff03dac6),
                        backgroundColor: Color.fromARGB(255, 241, 239, 239),
                        foregroundColor: Colors.blue,
                        //mini: true,

                        onPressed: () {
                          // Respond to button press
                        },

                        child: Icon(
                          Icons.facebook_sharp,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      FloatingActionButton(
                        // backgroundColor: const Color(0xff03dac6),
                        backgroundColor: Color.fromARGB(255, 241, 239, 239),
                        foregroundColor: Colors.purple,
                        // mini: true,

                        onPressed: () {
                          // Respond to button press
                        },
                        child: Icon(
                          Icons.whatsapp,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      FloatingActionButton(
                        // backgroundColor: const Color(0xff03dac6),
                        backgroundColor: Color.fromARGB(255, 241, 239, 239),
                        foregroundColor: Color.fromARGB(255, 15, 96, 235),
                        //mini: true,

                        onPressed: () {
                          Text("Nextpage");
                          // Respond to button press
                        },
                        child: Icon(
                          Icons.telegram,
                          size: 35,
                        ),
                      ),
                    ]),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),

                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text('New To Music?',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Join Now',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ]),
              ],
            ),
          ),
        ));
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
