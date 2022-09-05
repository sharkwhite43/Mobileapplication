import 'package:book_store/Data/Databook.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetileBook extends StatelessWidget {
  static String name = 'Detailbook';

  final BookdataModel bookdataModel;

  const DetileBook({Key? key, required this.bookdataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.indigo[200],
              expandedHeight: MediaQuery.of(context).size.height * 0.25,
              flexibleSpace: Container(
                height: MediaQuery.of(context).size.height * 10,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 60),
                        width: 155,
                        height: 122,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(bookdataModel.Imageurl),
                            )),
                      ),
                    ),
                    Center(
                      child: Image.network(
                        '${bookdataModel.Imageurl}',
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.only(top: 24, left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${bookdataModel.name}',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'ผู้เขียน : ${bookdataModel.author}',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'หมวดหมู่ : ${bookdataModel.Category} ',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'ราคา : ${bookdataModel.price} ',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'ความยาว : ${bookdataModel.Pagenum} หน้า',
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 10),
                        Text('เนื้อหา : ${bookdataModel.Descriptions}'),
                        SizedBox(height: 10),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.black,
                                padding: EdgeInsets.all(15.0),
                                primary: Colors.white,
                                textStyle: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'StyleScript',
                                ),
                              ),
                              onPressed: () async {},
                              child: Center(
                                child: Text(
                                  ' ${bookdataModel.price}',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
