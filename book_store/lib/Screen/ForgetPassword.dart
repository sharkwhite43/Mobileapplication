import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  static String name = 'ForgetPassword';
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _LOGINState createState() => _LOGINState();
}

class _LOGINState extends State<ResetPassword> {
  final _auth = FirebaseAuth.instance;
  late String Email;
  late String Password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.password_outlined),
            SizedBox(width: 15),
            Text(
              'Reset Password',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 30),
            Column(
              children: [
                TextField(
                  onChanged: (value) {
                    Email = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Email',
                    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
                SizedBox(height: 20),
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
                          _auth.sendPasswordResetEmail(email: Email);
                          Navigator.of(context).pop(context);
                        },
                        child: Center(child: Text('Send Request')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
