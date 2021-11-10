import 'package:flutter/material.dart';
import 'package:flutter_auth_code/screens/dashboard.dart';
import 'package:flutter_auth_code/services/authservice.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var name,password,token;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
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
                  AuthService().login(name, password).then((val){
                    if(val.data['success']){
                      token=val.data['token'];
                      Fluttertoast.showToast(msg: 'Authenticated',
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.green,
                          textColor: Colors.white,
                          fontSize: 16.0);
                      Navigator.push(context,MaterialPageRoute(builder: (context)=> const Dashboard() ));
                    }
                  });
                },
                child:Text('Authenticate'),
                color:Colors.blue,
              )
            ],
          ),
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
