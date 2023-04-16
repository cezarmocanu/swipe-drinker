import 'package:ai_drink/constants/routes.dart';
import 'package:ai_drink/pages/auth_page/auth_page.dart';
import 'package:ai_drink/store/auth_slice.dart';
import 'package:ai_drink/store/card_slice.dart';
import 'package:ai_drink/widgets/main_bottom_navigator.dart';
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
        initialRoute: Routes.auth,
        routes: {
          Routes.auth: (context) => AuthPage(),
          Routes.mainNavigation: (context) => MainBottomNavigator(),
        },
      ),
    );
  }
}
