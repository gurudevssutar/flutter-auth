import 'package:flutter/material.dart';

import 'loginscreen.dart';
import 'signupscreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome !!!"),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(0, mediaQueryData.size.height/3, 0, 0),
          alignment: Alignment.center,
          child: Column(children: [
            Text('Bcrypt and JWT authentication',style: TextStyle(fontSize: 20.0),),
            SizedBox(height:mediaQueryData.size.height/20),
            RaisedButton(
                child: Text('Log In'),
                textColor: Colors.white,
                color:Colors.green,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                } ),
            SizedBox(height: 10.0,),
            RaisedButton(
                child: Text('Sign Up'),
                textColor: Colors.white,
                color:Colors.blue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()),
                  );
                } )
          ],),
        )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
