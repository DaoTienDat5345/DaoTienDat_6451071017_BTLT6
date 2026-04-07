import 'package:flutter/material.dart';
import '../views/about_view.dart';
import '../views/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Company Intro',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
        '/about': (context) => const AboutView(),
      },
    );
  }
}
