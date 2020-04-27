import 'package:flutter/material.dart';
import 'package:sakptelloapp/screens/welcome_screen.dart';
import 'package:sakptelloapp/utilies/custom_colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                width: screenSize.width,
                margin: const EdgeInsets.only(top: 30.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: screenSize.width * 0.4,
                  height: screenSize.width * 0.43,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                'اطيب اكل من ست البيت',
                style: TextStyle(color: kSecondaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
