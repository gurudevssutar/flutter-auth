import 'package:flutter/material.dart';
import 'package:flutter_auth_code/services/authservice.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'loginscreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  var name,password,token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              TextField(
                  decoration : InputDecoration(labelText: 'Name'),
                  onChanged: (val){
                    name=val;
                  }
              ),
              TextField(
                  obscureText: true,
                  decoration : InputDecoration(labelText: 'Password'),
                  onChanged: (val){

                    password =val;
                  }
              ),
              SizedBox(height:10.0),
              RaisedButton(
                onPressed: (){
                  AuthService().addUser(name, password).then((val){

                      Fluttertoast.showToast(msg: 'New User Added',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  });
                },
                child:Text('Add User'),
                color:Colors.blue,
              )
            ],
          ),
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}
