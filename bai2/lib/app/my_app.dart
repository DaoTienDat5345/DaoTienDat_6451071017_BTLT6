import 'package:flutter/material.dart';

import '../views/home_view.dart';
import '../views/profile_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Screen Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
        '/profile': (context) => const ProfileView(),
      },
    );
  }
}
