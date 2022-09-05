import 'package:book_store/Screen/Bestsell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarBestsell extends StatelessWidget {
  const TabbarBestsell({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, Bestsell.name);
      },
      child: Tab(
        child: Text(
          'ขายดี',
          style: TextStyle(color: Colors.white, fontSize: 11),
        ),
      ),
    );
  }
}
