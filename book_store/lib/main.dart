import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screen/Bestsell.dart';
import 'Screen/CreateAccount.dart';
import 'Screen/ForgetPassword.dart';
import 'Screen/HomeScreen.dart';
import 'Screen/Homepage.dart';
import 'Screen/Login.dart';
import 'Screen/Newbook.dart';
import 'Screen/Readfree.dart';
import 'Screen/Search.dart';
import 'Screen/recommended for you.dart';
import 'component/Cartoon.dart';
import 'component/novel.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.name,
      routes: {
        WelcomeScreen.name: (context) => const WelcomeScreen(),
        LOGIN.name: (context) => const LOGIN(),
        ResetPassword.name: (context) => const ResetPassword(),
        CreateAccount.name: (context) => const CreateAccount(),
        HomePage.name: (context) => const HomePage(),
        Recommended.name: (context) => const Recommended(),
        Novel.name: (context) => const Novel(),
        Cartoon.name: (context) => const Cartoon(),
        Bestsell.name: (context) => const Bestsell(),
        NewBook.name: (context) => const NewBook(),
        ReadFree.name: (context) => const ReadFree(),
        Search.name: (context) => Search(),
      },
    );
  }
}
