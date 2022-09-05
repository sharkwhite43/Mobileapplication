import 'package:book_store/Screen/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Icon_close extends StatelessWidget {
  const Icon_close({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.close),
        onPressed: () async {
          await FirebaseAuth.instance.signOut();
          Navigator.pushNamed(context, LOGIN.name);
        });
  }
}
