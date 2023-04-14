import 'package:ai_drink/pages/bar_page/widgets/drink_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BarPage extends StatefulWidget {
  @override
  _BarPageState createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Container(
              // color: Colors.red,
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
          ),
        ),
      ),
    );
  }
}
