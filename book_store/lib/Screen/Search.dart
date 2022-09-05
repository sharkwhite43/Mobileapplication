import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  static String name = 'Search';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Search> {
  final List<Map<String, dynamic>> book = [
    {
      "name": "ปราชญ์แห่งธนู THE ARCHER",
      "price": 269,
      "Category": "นิยายแฟนตาซี",
      "url":
          "https://fv9-2.failiem.lv/thumb_show.php?i=rep9kuvdx&download_checksum=3e117765c6dd737bf2ebd3b85bfa0c8abe708297&download_timestamp=1632574127"
    },
    {
      "name": "ชีวิตออกแบบได้",
      "price": 120,
      "Category": "พัฒนาตนเอง",
      "url":
          'https://fv9-2.failiem.lv/thumb_show.php?i=kxyyfhh5q&download_checksum=0af00398f9779aaeb756dc9ce30593cf45a3e091&download_timestamp=1632658163'
    },
    {
      "name": "ลวงร้ายรัก",
      "price": 204,
      "Category": "นิยานรัก",
      "url":
          "https://fv9-2.failiem.lv/thumb_show.php?i=zjrj4hfs7&download_checksum=8af2ce2c7fe5fc3d2a279b2d00d3e4ca62d28eb9&download_timestamp=1632574145",
    },
    {
      "name": "เป็นสตรีต้องมีสมอง",
      "price": 436,
      "Category": "นิยายรัก",
      "url":
          "https://fv9-3.failiem.lv/thumb_show.php?i=vgpcud77z&download_checksum=6ba82ebfd7fa34eacdbe1f7351dc2579af210d5b&download_timestamp=1632574166",
    },
    {
      "name": "สายหมอกและดอกหญ้า",
      "price": 327,
      "Category": "นิยาย",
      "url":
          "https://fv9-3.failiem.lv/thumb_show.php?i=fg79ftqdf&download_checksum=47932be6dd20b7a0e8f33ce49a00ab2292b56333&download_timestamp=1632574186",
    },
    {
      "name": "ดาบธีลา",
      "price": 320,
      "Category": "นิยายรัก",
      "url":
          "https://fv9-1.failiem.lv/thumb_show.php?i=sn7pgwd7c&download_checksum=5eedc3b6b813b0052eb29e38bb154ca2de0244ab&download_timestamp=1632574207",
    },
    {
      "name": "ตอน ทริปสุุดมัน ปั่นยกล้อ",
      "price": 139,
      "Category": "การ์ตูน",
      "url":
          "https://fv2-2.failiem.lv/thumb_show.php?i=5jzcykf6x&download_checksum=d7f6772ad5ac303635c3fefa5683d405bb0e6766&download_timestamp=1632562782",
    },
    {
      "name": "ตอน Coding เกมทะลุจอ",
      "price": 199,
      "Category": "การ์ตูน",
      "url":
          "https://fv2-4.failiem.lv/thumb_show.php?i=gnkcsd7dq&download_checksum=13bff1738bc67725b5dfa05b10e108372482b1d1&download_timestamp=1632565684",
    },
    {
      "name": "ตอน โค้ชตึ๋งหนืดตืดระเบิด",
      "price": 159,
      "Category": "การ์ตูน",
      "url":
          "https://fv2-4.failiem.lv/thumb_show.php?i=qdj5qev37&download_checksum=71dcb443c801148888e5b3a7b88ee45da97e9f7c&download_timestamp=1632565742",
    },
    {
      "name": "หมูคริสต์มาส",
      "price": 495,
      "Category": "การ์ตูน",
      "url":
          "https://fv2-1.failiem.lv/thumb_show.php?i=srzt53v9e&download_checksum=4c4db8b23a6b490d586b42a3f097490ac7ffd679&download_timestamp=1632579339",
    },
    {
      "name": "มันไม่ง่ายขึ้นหรอก แต่เธอจะเก่งขึ้น",
      "price": 242,
      "Category": "พัฒนาตนเอง",
      "url":
          "https://fv2-1.failiem.lv/thumb_show.php?i=s6wgzmr2j&download_checksum=250cd01db9c74794e69e23ac5715f17f939ee589&download_timestamp=1632579365",
    },
    {
      "name": "หมูบินได้ (ปกใหม่)",
      "price": 170,
      "Category": "พัฒนาตนเอง",
      "url":
          "https://fv2-4.failiem.lv/thumb_show.php?i=nubfgnr7r&download_checksum=3961ff5e3bc0dcd9297e54e28b906223500d0359&download_timestamp=1632579382",
    },
    {
      "name": "ความน่าจะแมว (ฉบับสมบูรณ์)",
      "price": 238,
      "Category": "ความรู้",
      "url":
          "https://fv2-3.failiem.lv/thumb_show.php?i=wushfvtfb&download_checksum=68d2a4c1f1414fe66472e12ed5b0030806e8e543&download_timestamp=1632579415",
    },
    {
      "name": "ชายหนุ่มผู้ไม่ทำอะไรเลย (บันทึกไร้สาระของชีวิต)",
      "price": 127,
      "Category": "พัฒนาตนเอง",
      "url":
          "https://fv2-2.failiem.lv/thumb_show.php?i=2mq8jmvbv&download_checksum=59c9f88fad400ae2fbd05f03f85c3a78a656c7ec&download_timestamp=1632579441",
    },
    {
      "name": "ให้โลกถล่มลงมา เล่ม 1",
      "price": 182,
      "Category": "พัฒนาตนเอง",
      "url":
          "https://fv2-2.failiem.lv/thumb_show.php?i=8qtxc9sv2&download_checksum=e87e747d2909d397dcb9e490aba3dd1fabab1d1c&download_timestamp=1632579463",
    },
    {
      "name": "เรือนแรมสีแดง (ปกแข็ง)",
      "price": 354,
      "Category": "นิยายรัก",
      "url":
          "https://fv2-1.failiem.lv/thumb_show.php?i=4dcbacsdr&download_checksum=ab9281f7377be50324191b6e6b1f1c28000d6efe&download_timestamp=1632579487",
    },
    {
      "name": " คนเถื่อน (ปกแข็ง)",
      "price": 176,
      "Category": "พัฒนาตนเอง",
      "url":
          "https://fv2-3.failiem.lv/thumb_show.php?i=2ktj4uvgz&download_checksum=d25db2d80ef394b04a2654bf6d522e682ae66bae&download_timestamp=1632579523",
    },
    {
      "name": " ถ้าเป็นเธอจะต้องผ่านมันไปได้แน่นอน)",
      "price": 335,
      "Category": "พัฒนาตนเอง",
      "url":
          "https://fv2-4.failiem.lv/thumb_show.php?i=xpnaspxpb&download_checksum=17df266ea4f68811c9807e2911002469c19d4a5d&download_timestamp=1632579275",
    },
    {
      "name": " ตอน ยุทธการหนีความจน",
      "price": 99,
      "Category": "การ์ตูน",
      "url":
          "https://fv9-2.failiem.lv/thumb_show.php?i=3s28kggcv&download_checksum=9f0856a561ac962c746e78895b7bbde9b6e18768&download_timestamp=1632557587",
    },
    {
      "name": " ตอน กู้วิกฤต",
      "price": 129,
      "Category": "การ์ตูน",
      "url":
          "https://fv9-3.failiem.lv/thumb_show.php?i=6k88vefwt&download_checksum=cf75e113e610653cbe99d1d3deaa7774866b5400&download_timestamp=1632557560",
    },
    {
      "name": "เอาชีวิตรอดด้วยเงิน30บาท",
      "price": 159,
      "Category": "พัฒนาตนเอง",
      "url":
          "https://fv9-3.failiem.lv/thumb_show.php?i=8qagm7ej7&download_checksum=a53e6fa520a7fecfe41ea8390d7a7b70139f7979&download_timestamp=1632557140",
    },
  ];

  List<Map<String, dynamic>> bookdata = [];

  @override
  initState() {
    bookdata = book;
    super.initState();
  }

  void foundbook(String search) {
    List<Map<String, dynamic>> results = [];
    if (search.isEmpty) {
      results = book;
    } else {
      results = book.where((user) => user["name"].toLowerCase().contains(search.toLowerCase())).toList();
    }

    setState(() {
      bookdata = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                style: TextStyle(color: Colors.white),
                onChanged: (value) => foundbook(value),
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search Book',
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF), width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: bookdata.length > 0
                  ? ListView.builder(
                      itemCount: bookdata.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(bookdata[index]["id"]),
                        color: Colors.indigo[300],
                        elevation: 2,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: SizedBox(
                            height: 70,
                            child: Image.network(bookdata[index]['url']),
                          ),
                          title: Text(
                            bookdata[index]['name'],
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'หมวดหมู๋ : ${bookdata[index]["Category"].toString()} ',
                                style: TextStyle(fontSize: 15, color: Colors.white),
                              ),
                              Text(
                                'ราคา : ${bookdata[index]["price"].toString()} บาท',
                                style: TextStyle(fontSize: 15, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
