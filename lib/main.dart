import 'package:ai_drink/pages/auth_page/auth_page.dart';
import 'package:ai_drink/pages/bar_page/bar_page.dart';
import 'package:ai_drink/pages/swiper_page/swiper_page.dart';
import 'package:ai_drink/store/auth_slice.dart';
import 'package:ai_drink/store/card_slice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CardSlice()),
        ChangeNotifierProvider(create: (context) => AuthSlice()),
      ],
      child: MaterialApp(
        title: 'Swipe Drinker',
        initialRoute: '/',
        routes: {
          '/': (context) => AuthPage(),
          '/swipe': (context) => SwiperPage(),
          "/bar": (context) => BarPage(), // Add this line
        },
      ),
    );
  }
}
