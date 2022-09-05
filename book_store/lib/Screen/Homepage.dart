import 'package:book_store/Data/Bookdata.dart';
import 'package:book_store/Screen/recommended%20for%20you.dart';
import 'package:book_store/component/Cartoon.dart';
import 'package:book_store/component/Icon/Icon_search.dart';
import 'package:book_store/component/Icon/Icons_notifications.dart';
import 'package:book_store/component/Mybook.dart';
import 'package:book_store/component/novel.dart';
import 'package:book_store/component/tabbar/TabbarBestsell.dart';
import 'package:book_store/component/tabbar/TabbarNewbook.dart';
import 'package:book_store/component/tabbar/TabbarReadfree.dart';
import 'package:book_store/component/tabbar/TabbarRecommend.dart';
import 'package:book_store/component/tabbar/Text_Appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String name = 'Homepage';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<BookData> books = [
    BookData(
        "https://fv9-2.failiem.lv/thumb_show.php?i=rep9kuvdx&download_checksum=3e117765c6dd737bf2ebd3b85bfa0c8abe708297&download_timestamp=1632574127",
        "ปราชญ์แห่งธนู THE ARCHER",
        " Paulo Coelho ",
        "The Archer ปราชญ์แห่งธนู จะพาคุณไปพบกับความหมายของชีวิต ผ่านสายตาและวิถีของนักยิงธนู ที่จะทำให้คุณได้ตั้งคำถามและค้นหาคำตอบที่จะสั่นสะเทือนความรู้สึกคุณไม่แพ้ “ขุมทรัพย์สุดปลายฝัน” นี่คือปรัชญาชีวิตอันงดงาม ที่คุณจะได้ซึมซับผ่านเรื่องราวของ เทะสึยะ ชายผู้เคยมีชื่อเสียงเพราะพรสวรรค์ระดับอัจฉริยะในด้านการยิงธนู ฝีมือของเขาล้ำเลิศยากจะหาผู้ใดทัดเทียมได้ แต่ชื่อเสียงและการยอมรับ กลับเป็นสิ่งที่เขาเดินหันหลังให้ และเลือกที่จะหลบลี้ผู้คนไปเป็นเพียงช่างไม้ที่ไร้คนรู้จัก แต่แล้ววันหนึ่งก็มีชายแปลกหน้าออกเดินทางตามหาเพื่อขอประลองฝีมือกับเทะสึยะ เพื่อหาคำตอบว่าเขายังเป็นนักยิงธนูฝีมือชั้นครูอยู่หรือไม่ ชายแปลกหน้าผู้นั้นถามหาเขาจากเด็กชายคนหนึ่งในหมู่บ้านที่นำเขาไปพบกับเทะสึยะ ",
        152,
        2.7,
        "191"),
    BookData(
        "https://fv9-2.failiem.lv/thumb_show.php?i=zjrj4hfs7&download_checksum=8af2ce2c7fe5fc3d2a279b2d00d3e4ca62d28eb9&download_timestamp=1632574145",
        "ลวงร้ายรัก",
        " แชนเดอเลียร์",
        "บาดแผลแห่งรอยบาปที่ติดอยู่ในใจ ทำให้กาบมณีอุทิศชีวิตอันว่างเปล่าที่เหลือ อาสาเข้าร่วมทีมแพทย์รักษ์ด้วยภักดี หน่วยแพทย์เคลื่อนที่เพื่อผู้ยากไร้เข้าช่วยเหลือเหตุการณ์ก่อกบฏของรัฐตาลูลา ตามคำขอของผู้สืบทอดตำแหน่งคนล่าสุด เธอหอบความช้ำไปสุดหล้าฟ้าเขียวพร้อมกับความสำนึกผิดที่เคยทำบางอย่างผิด พลาดร้ายแรง แต่แล้วที่นั่นเธอกลับได้พบเกล้าเศียรอีกครั้ง ในฐานะกุมารแพทย์คนใหม่ของทีมอาสา บุคคลที่เธอไม่อยากเจอที่สุดในชีวิต เพราะเขาเกลียดชังเธอเข้ากระดูกดำ ทว่าโชคชะตาก็ลิขิตให้พวกเขาเริ่มต้นพัวพันกันอีกครั้ง แถมภารกิจอาสาของเธอยังต้องดูแลใกล้ชิดผู้สืบทอดคนสำคัญของตาลูลาถึงบนเตียง! สามปีที่ไม่พบหน้า หนึ่งปีที่เธอชดใช้ความผิดให้เขาไปหมดแล้ว ท่ามกลางสมรภูมิรบ กลิ่นคาวเลือด และเสียงระเบิดกัมปนาทที่ดังกึกก้อง แต่สองหัวใจที่เคยบาดหมางกลับว่างวาบด้วยความรู้สึกใหม่",
        0,
        3.7,
        "204"),
    BookData(
        "https://fv9-3.failiem.lv/thumb_show.php?i=vgpcud77z&download_checksum=6ba82ebfd7fa34eacdbe1f7351dc2579af210d5b&download_timestamp=1632574166",
        " เป็นสตรีต้องมีสมอง",
        "ฉางเยว่",
        "'ซ่งเชียน' ไม่เข้าใจว่าตนเองผิดพลาดประการใดจึงทำให้คู่หมั้นไปมีหญิงอื่นท่าทีโลเลอยากจะเก็บสตรีสองนางไว้ข้างกายทำให้นางโมโหจนต้องการถอนหมั้น แต่จะทำอย่างไรให้ตนเองบริสุทธิ์ ให้ชายหญิงคู่นั้นรู้สำนึก ขณะที่ดำเนินแผนการก็มี คนผู้หนึ่ง สอดมือเข้ามายุ่งตลอดโดยที่ไม่ได้ขอ!",
        0,
        3.8,
        "436"),
    BookData(
        "https://fv9-3.failiem.lv/thumb_show.php?i=fg79ftqdf&download_checksum=47932be6dd20b7a0e8f33ce49a00ab2292b56333&download_timestamp=1632574186",
        " สายหมอกและดอกหญ้า",
        " ดวงตะวัน",
        "สองปีก่อน ราชสีห์บุกทลายโกดังกักตุนหน้ากากอนามัยและเวชภัณฑ์พ่อของ มิลิน ถูกฆ่าตายคาโกดัง วันนี้เด็กสาวกลับมาล้างแค้นในวันที่ราชสีห์สิ้นลาย ไร้พวกเหลืออยู่แต่ The Prince ซึ่งไม่นิยมความรุนแรงปรินทร์ส่งดวิษ ไปรับมือเด็กสาวที่สะกดคำว่าให้อภัยไม่เป็นทั้งไม่แยแสการปล่อยวาง ดวิษเข้าใจความแค้นของเธอ เพราะผู้หญิงที่เขารักก็ตายจากไปเช่นกันพลันที่หมอกหนาทึบจางหายด้วยแสงรักแรงกล้าจากหัวใจดวงเล็กๆ เส้นทางแห่งการแก้แค้นของหนุ่มสาวจึงมาบรรจบเจอกัน แต่...ภาพที่ดวิษและมิลินมองเห็น กลับดูคล้ายว่า The Prince กำลังถลกหนังหัวราชสีห์",
        0,
        3.2,
        "327"),
    BookData(
        "https://fv9-1.failiem.lv/thumb_show.php?i=sn7pgwd7c&download_checksum=5eedc3b6b813b0052eb29e38bb154ca2de0244ab&download_timestamp=1632574207",
        " ดาบธีลา",
        " ดวงตะวัน",
        "บนแนวกำแพงโบราณหน้าปราสาทชาบีนวาส ปรากฏรูปสลักดาบซึ่งมีดอกไม้งามทอดยอดเกี่ยวพันที่ปลายแหลมคมรู้จักกันในชื่อ ดาบธีลา ไม่มีใครรู้ที่มาหรือความหมายแท้จริงของมันด้วยบันทึกในหน้าประวัติศาสตร์เชบีนบอกเพียงว่าบรรพบุรุษเจ้าของปราสาทแห่งนี้ คือเจ้าชายปลายแถวแห่งชาบีนวาส นายทาสผู้อำมหิต ทั้งยังเชื่อกันว่า มีหญิงสาวจากแดนไกล ถูกไล่ล่าจับตัวมาเป็นทาสอยู่ที่นี่น่าแปลกก็ตรงที่ หากเจ้าชายแห่งชาบีนวาส คือนายทาสผู้น่าชังเหตุไฉน ธีลา ดอกงามจึงเบ่งบานอวดโฉมอยู่ที่ปลายดาบคม ใครกันแน่ คือพ่อค้าทาสผู้สามานย์ และเรื่องราวแท้จริงเบื้องหลังประวัติศาสตร์การค้าทาสแห่งเชบีนเป็นเช่นไร คำตอบอาจเป็นดั่งถ้อยคำในภาษาธิมาส์โบราณ เอลันตระดารายาวีไลย์-อะไรๆ ก็เกิดขึ้นและเป็นจริงได้เสมอ",
        560,
        3.2,
        "320"),
    BookData(
        "https://fv2-2.failiem.lv/thumb_show.php?i=5jzcykf6x&download_checksum=d7f6772ad5ac303635c3fefa5683d405bb0e6766&download_timestamp=1632562782",
        " ตอน ทริปสุุดมัน ปั่นยกล้อ",
        "Yang, Tae-Soo",
        "กริ๊ง กริ๊ง ขอทางหน่อย แก๊งจักรยานตึ๋งหนืดสุดซิ่งมาแล้ว! ถ้ามีใครมาชวนเที่ยวทั่วประเทศโดยไม่ใช้เงินสักบาท อย่าเพิ่งคิดว่าจะเป็นไปไม่ได้ คว้าจักรยานแล้วปั่นตามครอบครัวตึ๋งหนืดมาเลย ครอบครัวตึ๋งหนืดวางแผนจะไปเที่ยวทั่วประเทศกัน แต่โรส ราชินีตึ๋งหนืด ไม่ยอมให้ใช้เงินอย่างสิ้นเปลืองแน่ๆ ทริปปั่นจักรยานโดยไม่ใช้เงินสักบาทจึงเริ่มต้นขึ้น แต่โทรุ จอมป่วนของเราจะไหวหรือเปล่านะ ในเมื่อจอมเขมือบแบบเขาไม่เคยรู้วิธีขี่จักรยานที่ถูกต้องเลย",
        192,
        3.5,
        "139"),
    BookData(
        "https://fv2-4.failiem.lv/thumb_show.php?i=gnkcsd7dq&download_checksum=13bff1738bc67725b5dfa05b10e108372482b1d1&download_timestamp=1632565684",
        " ตอน Coding เกมทะลุจอ",
        " Story box",
        "โทรุจอมเขมือบที่วันๆ คิดแต่เรื่องกิน ถูกเลือกเป็นตัวแทนแข่งขันโค้ดดิง หรือการเขียนโปรแกรมสำหรับเด็กร่วมกับฮารุและจอห์น ทั้งสามต้องฝ่าภารกิจสนุกๆ มากมายในสวนสนุกแห่งโลกอนาคตที่ทุกอย่างทำงานด้วยคอมพิวเตอร์ รวมไปถึงการสร้างเกมสุดมันที่โดนใจเด็กๆ",
        185,
        3.2,
        "199"),
    BookData(
        "https://fv2-4.failiem.lv/thumb_show.php?i=qdj5qev37&download_checksum=71dcb443c801148888e5b3a7b88ee45da97e9f7c&download_timestamp=1632565742",
        " ตอน โค้ชตึ๋งหนืดตืดระเบิด",
        " Yim Chang-ho",
        "โค้ชตึ๋งหนืด กูรูด้านการใช้เงินมาแล้ว! ใครมีปัญหาเรื่องการใช้เงินบ้าง ทั้งเก็บเงินไม่อยู่ ไม่รู้ว่าเงินตัวเองหายไปไหน พอได้เงินค่าขนมมาก็ซื้อของกินของเล่นจนหมด ไม่เหลือเงินออมเลยสักบาท ถ้าเป็นแบบนี้ในอนาคตต้องแย่แน่ๆ แต่อย่าเพิ่งกังวลไป เพราะโทรุและครอบครัวตึ๋งหนืดจะมาสวมบทเป็นโค้ชตึ๋งหนืดสอนเทคนิคการประหยัดง่ายๆ ให้เอง ตั้งแต่การเขียนบัญชีรายรับ-รายจ่าย ที่จะช่วยให้เก็บเงินได้แน่นอน การตรวจเช็กใบเสร็จรับเงินเพื่อค้นหาเงินที่หายไป รวมไปถึงเทคนิคประหยัดค่าใช้จ่ายในบ้านเพื่อช่วยคุณพ่อคุณแม่ เช่น ทำน้ำยาล้างจานใช้เอง เทคนิคประหยัดค่าไฟ การดูแลสุขภาพในฤดูหนาว เคล็ดลับช่วยให้นอนหลับสบาย และอีกมากมาย ครอบครัวตึ๋งหนืด ตอน โค้ชตึ๋งหนืดตืดระเบิด จะพาทุกคนไปพบเคล็ดลับการประหยัดต่างๆ ที่ทำได้เอง และแบ่งปันแก่ผู้อื่นได้ ลองทำดูสิ แล้วเด็กๆ เองก็จะเป็นโค้ชตึ๋งหนืดได้เช่นกัน",
        163,
        3.7,
        "159"),
    BookData(
        "https://fv2-1.failiem.lv/thumb_show.php?i=srzt53v9e&download_checksum=4c4db8b23a6b490d586b42a3f097490ac7ffd679&download_timestamp=1632579339",
        "หมูคริสต์มาส",
        "J.K. Rowling",
        "",
        0,
        3.6,
        "495"),
    BookData(
        "https://fv2-1.failiem.lv/thumb_show.php?i=s6wgzmr2j&download_checksum=250cd01db9c74794e69e23ac5715f17f939ee589&download_timestamp=1632579365",
        " มันไม่ง่ายขึ้นหรอก แต่เธอจะเก่งขึ้น",
        " คิมซูมิน (Kim Su Min)",
        "ถึงจะยากลำบากก็ยังเป็นชีวิตของเรา ถึงจะเศร้าก็ยังเป็นชีวิตของเรา ต่อให้สนุกก็ยังเป็นชีวิตของเรา ต่อให้มีความสุขก็ยังเป็นชีวิตของเรา ไม่ว่าจะทำอะไรทั้งหมดนี้ล้วนเป็นชีวิตของเรา ดังนั้นหแม้จะเกลียดชัง ก็จงอย่าโกรธแค้น จงใช้ชีวิตที่มีเพียงครั้งเดียวนี้ให้เท่ที่สุด",
        70,
        3.5,
        "242"),
    BookData(
        "https://fv2-4.failiem.lv/thumb_show.php?i=nubfgnr7r&download_checksum=3961ff5e3bc0dcd9297e54e28b906223500d0359&download_timestamp=1632579382",
        "หมูบินได้ (ปกใหม่)",
        "องอาจ ชัยชาญชีพ",
        "เรื่องราวของหมูน้อย “กองดิน” ที่มีปีกเล็กๆ ติดตัวมาตั้งแต่เกิด กองดินมีความฝันที่อยากจะบินให้ได้ เธอเฝ้าฝึกฝนพยายามวันแล้ววันเล่า แต่ก็มีอุปสรรคอันยิ่งใหญ่ที่ขวางทางเธออยู่ นั่นก็คือสังคมหมูรอบข้างที่ต่างก็เย้ยหยันดูแคลน จนทำให้เธอรู้สึกโดดเดี่ยวและแปลกแยก วันหนึ่งกองดินได้พบกับ “เพียงบิน” ซึ่งได้รับการยกย่องจากบรรดาหมูให้เป็น “หมูเทพเจ้า” เรื่องราวจะดำเนินต่อไปอย่างไรติดตามได้ใน “หมูบินได้” ซึ่งในตอนต้นของหนังสือนั้น ผู้เขียนได้กล่าวเอาไว้ว่า “พรสวรรค์และความเก่งกาจนั้นยอดเยี่ยม แต่ความกล้าหาญและความฝันนั้นยอดเยี่ยมยิ่งกว่า ส่วนความรักและความเข้าใจแม้จะไม่ได้ยอดเยี่ยมที่สุด แต่ก็ทำให้ทั้งพรสวรรค์, ความเก่งกาจ, ความกล้าหาญ และความฝันนั้นเดินคล้องแขนเคียงข้างไปด้วยกันได้อย่างอบอุ่น ทั้งยังทำให้โลกนี้น่ารักและงดงามเป็นที่สุด”",
        196,
        3.2,
        "170"),
    BookData(
        "https://fv2-3.failiem.lv/thumb_show.php?i=wushfvtfb&download_checksum=68d2a4c1f1414fe66472e12ed5b0030806e8e543&download_timestamp=1632579415",
        " ความน่าจะแมว (ฉบับสมบูรณ์)",
        " องอาจ ชัยชาญชีพ",
        "บันทึกฉบับสมบูรณ์อันเป็นมหากาพย์ของแมวมหากาฬต้นตำนานแห่งแห่งเทพเจ้าแมวอันลือเลื่อง 'แพนด้า'กับ'แป๊วแว้ว' บันทึกความหนาเกือบสี่ร้อยหน้าที่จะขับเคลื่อนความรู้สึกอันหลากหลาย ตั้งแต่ตลกขบขันบันเทิงใจไปจนถึงการได้เรียนรู้ปรัชญาแห่งชีวิตอันเข้มข้นจากแมวสู่คน  'ความน่าจะแมว(ฉบับสมบูรณ์)' คือบันทึกคนเลี้ยงแมวที่จะทำให้ผู้อ่านได้หัวเราะร่าน้ำตาริน สร้างความซาบซึ้งประทับใจด้วยความสนุกแบบครบรส ครบทุกอารมณ์ เหมาะสมกับผู้อ่านทุกคน ทุกเพศทุกวัย ไม่ว่าจะผู้เลี้ยงแมวมือใหม่ ทาสแมวมืออาชีพ ตลอดจนคนที่ไม่เคยนึกชอบแมวเลยก็ตาม",
        384,
        3.7,
        "238"),
    BookData(
        "https://fv2-2.failiem.lv/thumb_show.php?i=2mq8jmvbv&download_checksum=59c9f88fad400ae2fbd05f03f85c3a78a656c7ec&download_timestamp=1632579441",
        " ชายหนุ่มผู้ไม่ทำอะไรเลย (บันทึกไร้สาระของชีวิต)",
        "องอาจ ชัยชาญชีพ",
        "ชายหนุ่มผู้ไม่ทำอะไรเลย ความเรียงบอกเล่ามุมมองที่น่าสนใจบนความเรียบง่ายของชีวิต เต็มไปด้วยเรื่องราวหลากหลายอารมณ์ที่ถูกนำเสนอออกมาในแบบฉบับเฉพาะตัวขององอาจ ชัยชาญชีพ นักเขียนเจ้าของผลงานหลากหลายรูปแบบ ซึ่งนอกจากในหนังสือจะเต็มไปด้วยเรื่องราวที่ชวนให้ผู้อ่านอมยิ้มไปกับเรื่องต่าง ๆ แล้ว ยังมีบางแง่มุมที่ชวนให้เราได้ย้อนกลับมามองตัวเองและคนรอบข้าง นับเป็นหนังสืออีกเล่มที่สนพ.เป็ดเต่าควายภูมิใจเสนอ และอยากพาผู้อ่านไปรู้จักกับ ชายหนุ่มผู้ไม่ทำอะไรเลย ดูสักครั้ง",
        168,
        4.5,
        "127"),
    BookData(
        "https://fv2-2.failiem.lv/thumb_show.php?i=8qtxc9sv2&download_checksum=e87e747d2909d397dcb9e490aba3dd1fabab1d1c&download_timestamp=1632579463",
        " ให้โลกถล่มลงมา เล่ม 1",
        "องอาจ ชัยชาญชีพ",
        "เรื่องราวของ ป้าแป๋ว หญิงชราที่เริ่มต้นอาชีพในวัยสาวด้วยการเป็นนักเขียนนวนิยาย ก่อนที่จะเกิดการพลิกผันในชีวิตให้ต้องกลายมาเป็นนักเขียนการ์ตูนชื่อดังอยู่กว่าสามทศวรรษ จากนั้นก็หายเงียบไปจากวงการเกือบสิบปีอย่างไม่มีใครทราบสาเหตุ ก่อนจะกลับมาเริ่มเขียนการ์ตูนอีกครั้งในวัยเจ็ดสิบ และพร้อมไปกับการวางแผนที่จะถล่มโลกให้เป็นผุยผง พบกับเรื่องราวของป้าแป๋วและชะตากรรมอันเกี่ยวพันกับต้นลั่นทมและปีศาจหนึ่งล้านตนได้ใน ให้โลกถล่มลงมา ภาคต้น ผลงานล่าสุดจากผู้เขียน หัวแตงโม และ ยอดมนุษย์ดาวเศร้า",
        240,
        3.5,
        "182"),
    BookData(
        "https://fv2-1.failiem.lv/thumb_show.php?i=4dcbacsdr&download_checksum=ab9281f7377be50324191b6e6b1f1c28000d6efe&download_timestamp=1632579487",
        " เรือนแรมสีแดง (ปกแข็ง)",
        " ออนอเร่ เดอ บัลซัด",
        "เรือนแรมสีแดง (ปกแข็ง) เล่มนี้ จัดทำขึ้นเนื่องในในวาระครบรอบ 222 ปีชาตกาล ออนอเร่ เดอ บัลซัค (ค.ศ.1799-2021) บิดาแห่งนวนิยายสัจนิยมฝรั่งเศส ซึ่งได้รับเกียรติจาก รองศาสตราจารย์ ดร.วัลยา วิวัฒน์ศร เป็นผู้แปลและได้ตรวจทานแก้ไขอย่างละเอียดถี่ถ้วน พร้อมทั้งได้เพิ่มเติม บทวิเคราะห์ ท้ายเรื่องซาร์ราซีน เพื่อเสริมข้อมูลและขยายขอบฟ้าด้านวัฒนธรรมแก่ผู้อ่าน จึงได้ประกันได้ว่า ภาพทุกภาพที่เกิดจากตัวอักษรภาษาไทย มิได้ต่างจากภาพที่บัลซัคบรรจงวาดไว้ในภาษาฝรั่งเศส ",
        265,
        3.2,
        "354"),
    BookData(
        "https://fv2-3.failiem.lv/thumb_show.php?i=2ktj4uvgz&download_checksum=d25db2d80ef394b04a2654bf6d522e682ae66bae&download_timestamp=1632579523",
        " คนเถื่อน (ปกแข็ง)",
        "วอลแตร์",
        "เชื่อกันว่าโรงพยาบาลจิตเวชแห่งนี ้มีอสุรกายหลับใหลอยู่ในห้องใต้ดิน ตั้งแต่มาอยู่ที่นี่ อลิซ ก็ต้องเผชิญฝันร้ายทุกคืนงานเลี้ยงที่จบลงด้วยเลือด กระต่ายผู้ลึกลับที่จับจ้องเธอในเงามืด เรื่องเลวร้ายในอดีตทำให้เธอสูญเสียความทรงจำ กระต่าย ที่ปรากฏในฝันคือผู้กุมความลับทั้งหมดอลิซต้องออกตามหากระต่ายไปถึงดินแดนพิศวง ซึ่งมีทั้งผู้วิเศษและปีศาจจำแลงในร่างมนุษย์แต่การเดินทางของเธอกลับปลุกอสุรกายให้ตื่นขึ้นเมื่อคมเขี้ยวของมันขยับเข้าใกล้ อลิซคงอยากภาวนาให้ทุกอย่างเป็นเพียงฝันร้าย",
        290,
        4.8,
        "176"),
    BookData(
        "https://fv2-4.failiem.lv/thumb_show.php?i=xpnaspxpb&download_checksum=17df266ea4f68811c9807e2911002469c19d4a5d&download_timestamp=1632579275",
        "ถ้าเป็นเธอจะต้องผ่านมันไปได้แน่นอน",
        "คิมจีฮุน (Ji Hun Kim)",
        "เป็นหนังสือที่ผู้เขียนเล่าเรื่องโดยนำประสบการณ์ตัวเองมาถ่ายทอดส่วนหนึ่งก่อนตั้งคำถามถึงปัญหาและความกังวลใจที่ผู้อ่านกำลังเผชิญหน้าอยู่ ตอนเนื้อในหนึ่งบทจะสลับกันมีทั้งเรื่องเล่าของผู้เขียน เรื่องที่ปลอบโยนผู้อ่านและถ้อยคำเป็นประโยคๆ พร้อมภาพประกอบสวยงาม ถ้ามีใครสักคนที่กอดเราไว้พร้อมกับถามว่า เหนื่อยมากใช่ไหม เราน่าจะสามารถอดทนได้มากกว่านี้",
        463,
        3.7,
        "335"),
    BookData(
        "https://fv9-2.failiem.lv/thumb_show.php?i=3s28kggcv&download_checksum=9f0856a561ac962c746e78895b7bbde9b6e18768&download_timestamp=1632557587",
        " ตอน ยุทธการหนีความจน",
        "Irumo",
        "อยากรู้ไหมว่าจะประหยัดเงินค่าขนมได้อย่างไร ทำอย่างไรจึงจะทำให้เงินที่เก็บไว้มีเพิ่มมากขึ้น จะใช้ของฟรีได้ที่ไหนบ้าง ของที่เหลือใช้แล้วจะเอาไปทำอย่างอื่นได้ไหม ทำไมต้องจดบันทึกรายรับรายจ่าย ลองมาใช้ชีวิตกับครอบครัวตึ๋งหนืดดูสิ แล้วจะรู้คำตอบที่น่าทึ่งเรื่องวุ่นวายแสนอลหม่านของครอบครัวตึ๋งหนืดเริ่มต้นขึ้นเมื่อโกโร่หัวหน้าครอบครัวถูกลดเงินเดือน จนสมาชิกทุกคนต้องย้ายไปอยู่ในอพาร์ตเมนต์รูหนู แต่ครอบครัวตึ๋งหนืดซะอย่าง ไม่มีวันยอมแพ้ต่อโชคชะตาอันแสนรันทด ทุกคนจึงร่วมใจกันทำทุกวิถีทางเพื่อจะได้ย้ายไปอยู่ในบ้านสองห้องนอน จนทำให้เกิด ยุทธการหนีความจน ที่เด็กๆ เห็นแล้วจะต้องทึ่งกับความประหยัดแบบสุดๆ",
        224,
        4.5,
        "99"),
    BookData(
        "https://fv9-3.failiem.lv/thumb_show.php?i=6k88vefwt&download_checksum=cf75e113e610653cbe99d1d3deaa7774866b5400&download_timestamp=1632557560",
        " ตอน กู้วิกฤต",
        "Huh Yoon-Jung",
        "ครอบครัวตึ๋งหนืดกำลังประสบวิกฤตอีกครั้ง เมื่อคุณพ่อถูกไล่ออกจากบริษัทแล้วโทรุกับฮารุก็ต้องโดนงดค่าขนม! เด็กๆ ต้องช่วยกันทำงานพิเศษเพื่อช่วยกู้วิกฤตในครั้งนี้ ซึ่งงานแต่ละอย่างนั้นล้วนไม่ธรรมดา เช่น เป็นแขกในงานแต่งงาน เก็บขยะในหมู่บ้าน รับจ้างร้องเพลงคาราโอเกะ อ่านหนังสือนิทานให้เด็กฟัง ชิมและประเมินรสชาติขนม ฯลฯ ",
        192,
        3.5,
        "129"),
    BookData(
        "https://fv9-3.failiem.lv/thumb_show.php?i=8qagm7ej7&download_checksum=a53e6fa520a7fecfe41ea8390d7a7b70139f7979&download_timestamp=1632557140",
        "เอาชีวิตรอดด้วยเงิน30บาท",
        " Lee Bong Gi",
        "ครอบครัวตึ๋งหนืดกลับมาครั้งนี้จะมาสอนเคล็ดลับให้เราใช้เงินอย่างคุ้มค่า ใครว่าเงิน 30 บาทไม่มีค่าล่ะ! แชมป์ครอบครัวตึ๋งหนืดอย่างพวกเขาสามารถใช้มันทำอะไรได้ตั้งหลายอย่าง เช่น ใช้เงิน 30 บาทจัดงานขึ้นบ้านใหม่และงานวันเกิดพร้อมกัน ใช้เงิน 30 บาทไปเที่ยววันหยุด ใช้เงิน 30 บาทไปเดต ใช้เงิน 30 บาทกินข้าวเย็น มาเรียนรู้กลยุทธ์การประหยัดจากเงิน 30 บาทไปกับครอบครัวตึ๋งหนืดกันเถอะ",
        185,
        3.2,
        "159"),
    BookData(
        "https://fv9-1.failiem.lv/thumb_show.php?i=zd34kdh3x&download_checksum=59d5644b875f33022995bc033554357b2edf2c80&download_timestamp=1632558294",
        " ตอน ยาจกตระกูลตึ๋ง",
        " Storybox",
        "ครอบครัวตึ๋งหนืดที่สุดแสนจะประหยัดมีปัญหาใหญ่ที่แก้ไม่ตกเสียที นั่นคือโทรุที่เป็นตัวเขมือบประจำบ้าน แม้จะเป็นฝาแฝดกับฮารุ แต่ระดับความประหยัดกลับต่างกันราวฟ้ากับเหว ถ้าปล่อยให้เป็นแบบนี้ต่อไป ครอบครัวตึ๋งหนืดต้องกลายเป็นยาจกแน่ๆ แต่โรส ตึ๋งหนืดตัวแม่ไม่มีทางยอมแพ้ งานนี้เธอต้องเปลี่ยนนิสัยโทรุให้ได้ ว่าแล้วครอบครัวตึ๋งหนืดก็ต้องงัดเคล็ดลับการประหยัดออกมา เพื่อเปลี่ยนจอมเขมือบที่เก็บเงินไม่อยู่ให้กลายเป็นเศรษฐี เช่น วิธีใช้เวลาให้คุ้มค่าแบบเศรษฐีเวลา เทคนิคการคุ้ยตู้เย็นแบบตึ๋งหนืด การบริหารดวงตาช่วยให้สายตาดี เคล็ดลับแก้ปัญหาเด็กเลือกกินอาหาร การจัดการอาหารหมดอายุแบบไม่เสียของ แต่ละไอเดีย รับประกันความตืดความฮาแน่นอน ครอบครัวตึ๋งหนืด ตอน ยาจกตระกูลตึ๋ง จะพาทุกคนไปพบเคล็ดลับการประหยัดง่ายๆ ที่ทำได้เองและแบ่งปันแก่ผู้อื่นได้ ลองทำดูสิ แล้วเด็กๆ เองก็จะกลายเป้นเศรษฐีตึ๋งหนืดที่พ่อแม่ภูมิใจได้เช่นกัน",
        163,
        3.7,
        "159"),
    BookData(
        "https://fv2-1.failiem.lv/thumb_show.php?i=djrnj95ux&download_checksum=11ba2a814ae88b88bb394bb2c2f8d4a5ed1327f8&download_timestamp=1632562644",
        " ตอน กระชากหน้ากากตึ๋งหนืด",
        "Yim Chang-ho",
        "หน้ากากไหนๆ ที่ว่าแน่ ก็ต้องหลีกทางให้หน้ากากตึ๋งหนืด การประหยัดคือการลงมือปฏิบัติ ถ้าตั้งใจประหยัด ทุกสิ่งก็เป็นไปได้ นี่คือสโลแกนของหน้ากากตึ๋งหนืด ฮีโร่แห่งการประหยัดตัวจริง แม้ไม่มีใครรู้ว่าตัวจริงของเขาคือใคร แต่หน้ากากตึ๋งหนืดพร้อมจะช่วยเหลือทุกคนที่มีปัญหา",
        192,
        4.5,
        "189"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text_Appbar(),
          leading: Icon(Icons.menu),
          actions: [
            Icon_search(),
            Iconnotifications(),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              TabbarRecommend(),
              TabbarBestsell(),
              TabbarNewbook(),
              TabbarReadfree(),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('แนะนำสำหรับคุณ', style: TextStyle(fontSize: 20, color: Colors.black)),
                      Icon(Icons.sort_rounded, color: Colors.black),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Recommended.name);
                  },
                ),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      myBook(books[1]),
                      myBook(books[0]),
                      myBook(books[3]),
                      myBook(books[4]),
                      myBook(books[2]),
                    ],
                  ),
                ),
                TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('นิยายและวรรณกรรม', style: TextStyle(fontSize: 20, color: Colors.black)),
                      Icon(Icons.sort_rounded, color: Colors.black),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Novel.name);
                  },
                ),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      myBook(books[9]),
                      myBook(books[10]),
                      myBook(books[11]),
                      myBook(books[12]),
                      myBook(books[13]),
                    ],
                  ),
                ),
                TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('หนังสือการ์ตูน', style: TextStyle(fontSize: 20, color: Colors.black)),
                      Icon(Icons.sort_rounded, color: Colors.black),
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Cartoon.name);
                  },
                ),
                SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      myBook(books[17]),
                      myBook(books[18]),
                      myBook(books[19]),
                      myBook(books[20]),
                      myBook(books[21]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
