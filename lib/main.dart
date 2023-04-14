import 'package:ai_drink/pages/swiper_page/swiper_page.dart';
import 'package:ai_drink/store/card_slice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CardSlice()),
      ],
      child: MaterialApp(
        title: 'My App',
        initialRoute: '/',
        routes: {
          '/': (context) => SwiperPage(),
          '/newpage': (context) => SwiperPage(), // Add this line
        },
      ),
    );
  }
}
