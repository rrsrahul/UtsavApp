import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';
import 'package:flutter_watch_shop/utils/utils.dart';
import 'package:flutter_watch_shop/views/home/home.dart';


class LandingPage extends StatefulWidget{
  @override
  State createState() => LandingPageState();
}

class LandingPageState extends State<LandingPage>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:3),(){
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: AssetImage("SVG/2x/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 1.0,sigmaY: 1.0),
              child: Container(
                decoration: new BoxDecoration(
                    color: Colors.black.withOpacity(0.55)
                ),
              ),
            ),
          ),

          Container(
            child: Image(image:AssetImage("assets/images/logo.png")),
          )
        ],
      ),
      bottomNavigationBar: LinearProgressIndicator(backgroundColor: Colors.purpleAccent,valueColor: new AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent)),
    );
  }
}