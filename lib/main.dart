import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> { 
  @override
  Widget build(BuildContext context) { 
    return  Scaffold(
          appBar: AppBar(
            leading: const BackButton(
    color: Colors.black, // <-- SEE HERE
  ),
            centerTitle: false,
            title: Padding(
              padding: const EdgeInsets.all(0),
              child: Text("Checkpoint"),
            ),
            foregroundColor: Colors. black,
            backgroundColor: Colors.white
          ),
          body: Container(
            padding: EdgeInsets.only(top:230, left:20, right:20),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/images/SCAN NFC.svg",
                  semanticsLabel: 'Acme Logo'
                  ),
                  Center(child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      textAlign: TextAlign.center,
                      " Mohon maaf HP kamu tidak mendukung fitur NFC untuk melakukan checkpoint ini. "),
                  ))
              ]
            )
            )
    );          
  }
}