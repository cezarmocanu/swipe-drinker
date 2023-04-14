import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrinkCard extends StatefulWidget {
  // final String title;
  // final List<String> ingredients;
  // final String urlImage;
  const DrinkCard({super.key});

  @override
  State<DrinkCard> createState() => _DrinkCardState();
}

class _DrinkCardState extends State<DrinkCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Whiskey Cola with ice",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "232,323",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
