import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class WelcomeScreen extends StatefulWidget {
  static String name = 'HomeScreen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Text('BookStore', style: TextStyle(fontSize: 40)),
                  SizedBox(height: 5),
                  Text('Your Welcome To The Bookstore.        Have fun reading the book Today.',
                      style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Image.asset('asset/images/splash_bg.png'),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.all(32),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Color(0xFF40284A), borderRadius: BorderRadius.circular(50)),
                width: double.infinity,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LOGIN.name);
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
