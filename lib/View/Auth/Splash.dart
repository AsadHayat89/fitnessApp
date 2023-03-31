import 'dart:ui';

import 'package:fitnessapp/View/Auth/NameScreen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => NameScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      body: Container(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200.withOpacity(0.1),
              // borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 45,right: 45),
                  child: Container(

                    child: Text(
                      "Welcome to achieve AI",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),
                    ),

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(
                    child: Text(
                      "Ready to Start Griding?",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),
                    ),

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 140),
                  child: Container(
                    child: Text(
                      "Get Started ->",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),
                    ),

                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
