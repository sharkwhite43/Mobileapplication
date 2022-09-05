import 'package:book_store/Screen/Search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Icon_search extends StatelessWidget {
  const Icon_search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        Navigator.pushNamed(context, Search.name);
      },
    );
  }
}
