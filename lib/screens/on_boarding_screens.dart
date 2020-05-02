import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piggyvestintro/constants.dart';
import 'package:piggyvestintro/screens/login.dart';
import 'package:piggyvestintro/screens/sign_up.dart';

class OnboardingScreen extends StatefulWidget {
  static const id = "onboarding_screen";
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 4;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for(int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 150,
      ),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 5.0,
      width: isActive ? 20.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff083E9E): Colors.grey.shade100,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: 125,
                  child: Image.asset("images/piggy-png_1_.png"),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  height: MediaQuery.of(context).size.height / 1.75,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      OnboardingPage(
                        image: "images/save_now.jpg",
                        pageText: "Build your savings ease & discipline",
                      ),
                      OnboardingPage(
                        image: "images/grow_savings.jpg",
                        pageText: "Invest with ease in verified opportunities",
                      ),
                      OnboardingPage(
                        image: "images/financial.jpg",
                        pageText: "Lock funds you don't want to be tempted to touch",
                      ),
                      OnboardingPage(
                        image:"images/couple_travelling.jpg",
                        pageText: "Setup multiple savings goals and reach them",
                      ),
                    ],
                  ),
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: _buildPageIndicator(),
               ),
                SizedBox(
                  height: 50.0,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 150,
                      height: 50,
                      shape: kBoxDecoration,
                      child: RaisedButton(
                        color: Color(0xff083E9E),
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, LoginPage.id);
                        },
                        child: Text("LOGIN"),
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 150,
                      height: 50,
                      shape: kBoxDecoration,
                      child: OutlineButton(
                        textColor: Color(0xff083E9E),
                        borderSide: BorderSide(
                          color: Color(0xff083E9E),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, SignUp.id);
                        },
                        child: Text("REGISTER"),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {

  final String image;
  final String pageText;

  OnboardingPage({this.image, this.pageText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Container(
              child: Image.asset(image),
              height: 300.0,
              width: 300.0,
            ),
          ),
          SizedBox(height: 15.0),
          Center(
            child: Text(
              pageText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
