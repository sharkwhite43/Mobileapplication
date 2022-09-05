import 'package:book_store/Screen/Newbook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarNewbook extends StatelessWidget {
  const TabbarNewbook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, NewBook.name);
      },
      child: Tab(
        child: Text(
          'มาใหม่',
          style: TextStyle(color: Colors.white, fontSize: 11),
        ),
      ),
    );
  }
}
