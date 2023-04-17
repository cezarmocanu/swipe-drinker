import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../bar_page/widgets/drink_card.dart';

class MatchPage extends StatefulWidget {
  const MatchPage({super.key});

  @override
  State<MatchPage> createState() => _MatchPageState();
}

class _MatchPageState extends State<MatchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Text(
                "It's a match",
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "You have liked 'A cold one with the boys'",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: const Text("Button text"),
                ),
                OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                  ),
                  child: const Text("Button text"),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
