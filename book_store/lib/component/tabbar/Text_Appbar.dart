import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Text_Appbar extends StatelessWidget {
  const Text_Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 70,
        ),
        Icon(Icons.book_outlined),
        Text('BookStore'),
      ],
    );
  }
}
