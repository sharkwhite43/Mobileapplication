import 'package:book_store/Screen/Readfree.dart';
import 'package:flutter/material.dart';

class TabbarReadfree extends StatelessWidget {
  const TabbarReadfree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, ReadFree.name);
      },
      child: Tab(
        child: Text(
          'อ่านฟรี',
          style: TextStyle(color: Colors.white, fontSize: 11),
        ),
      ),
    );
  }
}
