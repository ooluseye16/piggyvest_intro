import 'package:flutter/material.dart';
import 'package:piggyvestintro/screens/login.dart';
import 'package:piggyvestintro/screens/sign_up.dart';
import 'screens/on_boarding_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Piggy Vest",
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreen.id,
      theme: ThemeData(
        fontFamily: "Berlin Bold",
      ),
      routes: {
        LoginPage.id : (context) => LoginPage(),
        SignUp.id: (context) => SignUp(),
        OnboardingScreen.id : (context) => OnboardingScreen(),
      },
    );
  }
}
