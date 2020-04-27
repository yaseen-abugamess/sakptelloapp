import 'package:flutter/material.dart';
import 'package:sakptelloapp/utilies/custom_colors.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text('رجوع'),
      ),
      body: Form(
          key: _fromKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: screenSize.width,
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: screenSize.width * 0.4,
                    height: screenSize.width * 0.43,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.06,
                ),
                Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                Container(
                  width: screenSize.width * 0.9,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0),
                      border: OutlineInputBorder(
                        gapPadding: 10.0,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      hintText: 'رقم الجوال',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: screenSize.width * 0.9,
                  child: TextFormField(
                    textInputAction: TextInputAction.done,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10.0),
                      hintText: 'كلمة المرور',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Text(
                      'هل نسيت كلمة المرور ؟',
                    )),
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'إنشاء حساب جديد',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    MaterialButton(
                      color: kPrimaryColor,
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
