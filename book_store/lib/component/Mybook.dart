import 'package:book_store/Data/Bookdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myBook(BookData book) {
  return Container(
    width: 122,
    margin: EdgeInsets.only(right: 12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 121.66,
          height: 180.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(book.bookCover),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          book.bookName,
          style: TextStyle(fontSize: 8.5),
        ),
        Text(
          "THB ${book.price}",
          style: TextStyle(fontSize: 10, color: Colors.green[900]),
        ),
      ],
    ),
  );
}
