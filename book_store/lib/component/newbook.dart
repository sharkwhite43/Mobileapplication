import 'package:book_store/Data/Bookdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget newBook(BookData book) {
  return Container(
    width: double.infinity,
    height: 150,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 8),
          height: 128,
          width: 83,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: NetworkImage(book.bookCover), fit: BoxFit.cover),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.bookName,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                book.author,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.content_copy),
                  Text(book.pageNum.toString()),
                  SizedBox(width: 50),
                  Icon(Icons.star),
                  Text(book.rating.toString()),
                  SizedBox(height: 20),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.monetization_on_outlined,
                    size: 20,
                  ),
                  Text(
                    " ${book.price}",
                    style: TextStyle(fontSize: 15, color: Colors.green[900]),
                  ),
                ],
              ),
            ],
          ),
        ),
        Icon(Icons.bookmark_border),
      ],
    ),
  );
}
