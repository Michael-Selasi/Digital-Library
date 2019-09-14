import 'package:digital_library_prototype/pages/favorites_page.dart';
import 'package:digital_library_prototype/pages/home_page.dart';
import 'package:digital_library_prototype/pages/login_page.dart';
import 'package:digital_library_prototype/pages/signup_page.dart';
import 'package:digital_library_prototype/pages/user_profile_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Library',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Raleway",
      ),
      routes: {
        '/home': (BuildContext context) => HomePage(),
        '/signup': (BuildContext context) => SignupPage(),
        '/login': (BuildContext context) => LoginPage(),
        '/userprofile': (BuildContext context) => UserProfilePage(),
        '/favorites': (BuildContext context) => FavoritesPage(),
      },
      home: LoginPage(),
    );
  }
}
