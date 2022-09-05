import 'package:book_store/Screen/Homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarRecommend extends StatelessWidget {
  const TabbarRecommend({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Tab(
        child: Text(
          'แนะนำ',
          style: TextStyle(color: Colors.white, fontSize: 11),
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, HomePage.name);
      },
    );
  }
}
