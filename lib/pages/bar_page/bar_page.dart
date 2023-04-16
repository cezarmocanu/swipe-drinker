import 'package:ai_drink/pages/bar_page/widgets/drink_card.dart';
import 'package:flutter/material.dart';

class BarPage extends StatefulWidget {
  const BarPage({super.key});

  @override
  State<BarPage> createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DrinkCard(),
            SizedBox(
              height: 20,
            ),
            DrinkCard(),
            SizedBox(
              height: 20,
            ),
            DrinkCard(),
            SizedBox(
              height: 20,
            ),
            DrinkCard(),
            SizedBox(
              height: 20,
            ),
            DrinkCard(),
            SizedBox(
              height: 20,
            ),
            DrinkCard(),
            SizedBox(
              height: 20,
            ),
            DrinkCard(),
            SizedBox(
              height: 20,
            ),
            DrinkCard(),
          ],
        ),
      ),
    );
  }
}
