import 'dart:developer';
import 'package:book_store/Screen/Homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CreateAccount.dart';
import 'ForgetPassword.dart';

class LOGIN extends StatefulWidget {
  static String name = 'Login';
  const LOGIN({Key? key}) : super(key: key);

  @override
  _LOGINState createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {
  final _auth = FirebaseAuth.instance;
  late String Email;
  late String Password;

  String? erroremail;
  String? errorpassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(fontSize: 50, color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Have fun reading the book Today.',
                        style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            TextField(
                              onChanged: (value) {
                                Email = value;
                              },
                              decoration: InputDecoration(
                                hintText: 'Email',
                                errorText: erroremail,
                                prefixIcon: Icon(Icons.email),
                                hintStyle: TextStyle(
                                  color: Colors.black,
                                ),
                                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFA10D0D), width: 1.0),
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFAA42F5), width: 2.0),
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            TextField(
                              obscureText: true,
                              onChanged: (value) {
                                Password = value;
                              },
                              decoration: InputDecoration(
                                hintText: 'Password',
                                errorText: errorpassword,
                                prefixIcon: Icon(Icons.password),
                                hintStyle: TextStyle(color: Colors.black),
                                contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFA10D0D), width: 1.0),
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xFFAA42F5), width: 2.0),
                                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, ResetPassword.name);
                                    },
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(15.0),
                                      primary: Colors.black,
                                      textStyle: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'StyleScript',
                                      ),
                                    ),
                                    child: Text('Forget Password'),
                                  ),
                                ),
                                SizedBox(width: 45),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, CreateAccount.name);
                                    },
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(15.0),
                                      primary: Colors.black,
                                      textStyle: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'StyleScript',
                                      ),
                                    ),
                                    child: Text('NewUser? Sign-In'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Stack(
                                children: <Widget>[
                                  Positioned.fill(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFFA10D0D),
                                            Color(0xFFD219AA),
                                            Color(0xFFAA42F5),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(15.0),
                                      primary: Colors.white,
                                      textStyle: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'StyleScript',
                                      ),
                                    ),
                                    onPressed: () async {
                                      try {
                                        UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: Email, password: Password);
                                        if (userCredential.user != null) {
                                          Navigator.pushNamed(context, HomePage.name);
                                        }
                                      } on FirebaseAuthException catch (e) {
                                        if (e.code == 'user-not-found') {
                                          log('No user found for that email.');
                                        } else if (e.code == 'wrong-password') {
                                          log('Wrong password provided for that user.');
                                        }
                                      } catch (e) {
                                        log(e.toString());
                                      }
                                    },
                                    child: Center(child: Text('LOGIN')),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
