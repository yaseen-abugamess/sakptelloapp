import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sakptelloapp/screens/home_screen.dart';
import 'package:sakptelloapp/screens/login_screen.dart';
import 'package:sakptelloapp/screens/splash_screen.dart';
import 'package:sakptelloapp/utilies/style.dart';

main() {
  runApp(SkaptelloApp());
}

class SkaptelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("ar"),
      supportedLocales: [
        Locale("ar"),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
      },
    );
  }
}
