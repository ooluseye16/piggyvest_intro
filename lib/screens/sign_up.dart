import 'package:flutter/material.dart';
import 'package:piggyvestintro/constants.dart';
import 'package:piggyvestintro/screens/login.dart';
class SignUp extends StatefulWidget {

  static const id = "signup_page";
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  int groupValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 8.0),
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
                  "Create Account",
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Color(0xff083E9E),
                  ),
                ),
                Text("Create a free account and start a proper financial journey with PiggyVest.", softWrap: true,),
                SizedBox(
                  height: 40.0,
                ),
                Text("Full Name"),
                SizedBox(height: 8.0),
                TextFormField(
                    decoration: kInputDecoration.copyWith(
                        hintText: "Full Name"
                    )
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text("Email Address"),
                SizedBox(height: 8.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                    decoration: kInputDecoration.copyWith(
                        hintText: "Email address"
                    ),
                ),
                SizedBox(
                  height: 25.0,
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
                Text("Password"),
                SizedBox(height: 8.0),
                TextFormField(
                  obscureText: true,
                  decoration: kInputDecoration.copyWith(hintText: "***********"),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text("Referrer Phone or Promo Code(Optional)"),
                SizedBox(height: 8.0),
                TextFormField(
                    decoration: kInputDecoration.copyWith(
                        hintText: "Referrer Phone or Code"
                    )
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "How Did You Hear About Us?(Optional)"
                ),
                ButtonTheme(
                  child: FlatButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Click to Select"),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    ),
                    color: Colors.grey,
                    onPressed: () {
                      return showModalBottomSheet(context: context, builder: (context){
                        return Container(
                          child: ListView(
                            children: <Widget>[
                              RadioListTile(
                                title: Text("Click to select"),
                                value: 1,
                                groupValue: groupValue,
                                onChanged: (int value) {
                                    groupValue = value;
                                  },
                              ),
                              RadioListTile(
                                title: Text("Facebook"),
                                value: 2,
                                groupValue: groupValue,
                                onChanged: (int value) {
                                    groupValue = value;
                                },
                              )
                            ],
                          )
                        );
                      });
                    },

                  ),
                ),
                SizedBox(height: 30.0),
                ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    textColor: Colors.white,
                    shape: kBoxDecoration,
                    onPressed: () => null,
                    child: Text("CREATE ACCOUNT"),
                    color: Color(0xff083E9E),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?", style: TextStyle(color: kMainColor),),
                    InkWell(
                        onTap: () => Navigator.pushNamed(context, LoginPage.id),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text("Log in", style: TextStyle(color: kMainColor),),
                        )),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//SmartSelect.single(
//modalType: SmartSelectModalType.bottomSheet,
//value: _option,
//title: "",
//isTwoLine: true,
//options: options.option,
//trailing: Icon(Icons.keyboard_arrow_down),
//onChange: (val) {
//setState(() {
//_option = val;
//});
//}
//),