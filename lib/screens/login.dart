import 'package:flutter/material.dart';
import 'package:piggyvestintro/constants.dart';
import 'package:piggyvestintro/screens/sign_up.dart';

class LoginPage extends StatefulWidget {
  static const id = "login_page";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
          child: Form(
            child: ListView(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      size: 40.0,
                    )
                  ),
                ),
                SizedBox(height: 50.0),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Color(0xff083E9E),
                  ),
                ),
                Text("Securely login to your PiggyVest"),
                SizedBox(
                  height: 40.0,
                ),
                Text("Phone Number"),
                SizedBox(height: 8.0),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: kInputDecoration.copyWith(
                    hintText: "0812xxxxxxx"
                  )
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text("Your Password"),
                SizedBox(height: 8.0),
                TextFormField(
                  obscureText: true,
                  decoration: kInputDecoration.copyWith(hintText: "***********"),
                ),
                SizedBox(height: 30.0),
                ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.white,
                    shape: kBoxDecoration,
                    onPressed: () => null,
                    child: Text("LOG IN"),
                    color: Color(0xff083E9E),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?", style: TextStyle(color: kMainColor),),
                    InkWell(
                        onTap: () => Navigator.pushNamed(context, SignUp.id),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text("Register", style: TextStyle(color: kMainColor),),
                        )),
                  ],
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text("Forgot Password?"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
