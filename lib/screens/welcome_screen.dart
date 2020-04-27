import 'package:flutter/material.dart';
import 'package:sakptelloapp/screens/home_screen.dart';
import 'package:sakptelloapp/screens/login_screen.dart';
import 'package:sakptelloapp/utilies/custom_colors.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage('assets/images/bg.png'),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo.png',
              width: screenSize.width * 0.4,
              height: screenSize.width * 0.43,
            ),
            SizedBox(
              height: screenSize.height * 0.008,
            ),
            Text(
              'أطلب أشهى الاطعمة والحلويات',
              style: TextStyle(fontSize: 18.0, color: Colors.white),
            ),
            SizedBox(
              height: screenSize.height * 0.06,
            ),
            MaterialButton(
              minWidth: screenSize.width * 0.9,
              height: 48.0,
              color: kButtonColor,
              onPressed: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
              child: Text(
                'تسجيل الدخول',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                'إنشاء حساب جديد',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(HomeScreen.routeName);
              },
              child: Text(
                'تخطي',
                style: TextStyle(fontSize: 18.0, color: kButtonColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
