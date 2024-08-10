import 'package:flutter/material.dart';
import 'package:social_media_ui_app/screens/chats_screen.dart';
import 'package:social_media_ui_app/screens/home_screen.dart';
import 'package:social_media_ui_app/screens/profile_screen.dart';
import 'package:social_media_ui_app/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        ChatsScreen.routeName: (context) => const ChatsScreen(),
        SearchScreen.routeName: (context) => const SearchScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
      },
    );
  }
}
