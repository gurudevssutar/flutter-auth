import 'package:flutter/material.dart';
import 'package:flutter_auth_code/screens/loginscreen.dart';
import 'package:flutter_auth_code/screens/signupscreen.dart';
import 'package:flutter_auth_code/screens/welcomescreen.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MaterialApp(
  title: "App",
  home: MyApp(),
));


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: LoginScreen(),
      home: WelcomeScreen(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   var name,password,token;
//
//   @override
//   Widget build(BuildContext context) {
//     return LoginScreen();
//   }
// }
