import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterwebtutorial/features/Home/view/fashionhome.dart';
import 'package:flutterwebtutorial/features/login/view/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task App',
      home: FashionLogin(),
    );
  }
}
