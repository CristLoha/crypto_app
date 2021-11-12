import 'package:crypto_app/home/main_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MainPage(),
      },
    );
  }
}
