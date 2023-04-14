import 'dart:math';

import 'package:ai_drink/models/drink/drink.dart';
import 'package:ai_drink/store/card_slice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwiperCard extends StatefulWidget {
  final Drink drink;
  final bool isFront;

  const SwiperCard({
    Key? key,
    required this.drink,
    required this.isFront,
  }) : super(key: key);

  @override
  State<SwiperCard> createState() => _SwiperCardState();
}

class _SwiperCardState extends State<SwiperCard> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final size = MediaQuery.of(context).size;

      final provider = Provider.of<CardSlice>(context, listen: false);
      provider.setScreenSize(size);
    });
  }

  @override
  Widget build(BuildContext context) => SizedBox.expand(
        child: widget.isFront ? buildFrontCard() : buildCard(),
      );

  //TODO move into a new component
  //Wrap with consumer
  Widget buildFrontCard() => GestureDetector(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final provider = Provider.of<CardSlice>(context);
            final milliseconds = provider.isDragging ? 0 : 400;
            final position = provider.position;

            final center = constraints.smallest.center(Offset.zero);
            final angle = provider.angle * pi / 180;
            final rotatedMatrix = Matrix4.identity()
              ..translate(center.dx, center.dy)
              ..rotateZ(angle)
              ..translate(-center.dx, -center.dy);
            return AnimatedContainer(
              curve: Curves.easeInOut,
              duration: Duration(milliseconds: milliseconds),
              transform: rotatedMatrix..translate(position.dx, position.dy),
              child: buildCard(),
            );
          },
        ),
        onPanStart: (details) {
          final provider = Provider.of<CardSlice>(context, listen: false);
          provider.startPosition(details);
        },
        onPanUpdate: (details) {
          final provider = Provider.of<CardSlice>(context, listen: false);
          provider.updatePosition(details);
        },
        onPanEnd: (details) {
          final provider = Provider.of<CardSlice>(context, listen: false);
          provider.endPosition();
        },
      );

  //TODO move into a new component
  //Wrap with consumer
  Widget buildCard() => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.drink.imagePath),
              fit: BoxFit.cover,
              alignment: Alignment(-0.3, 0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.drink.name,
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Chip(
                              label: Text('Whiskey'),
                            ),
                            SizedBox(width: 4),
                            Chip(
                              label: Text('Cola'),
                            ),
                            SizedBox(width: 4),
                            Chip(
                              label: Text('Ice'),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
