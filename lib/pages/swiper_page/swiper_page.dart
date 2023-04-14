import 'dart:math';

import 'package:ai_drink/pages/swiper_page/widgets/swiper_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/card_provider.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16),
          child: buildCards(),
        ),
      ),
    );
  }

  Widget buildCards() {
    final provider = Provider.of<CardProvider>(context);
    final urlImages = provider.urlImages;

    return Stack(
      children: urlImages
          .map((urlImage) => SwiperCard(
                urlImage: urlImage,
                isFront: urlImages.last == urlImage,
              ))
          .toList(),
    );
  }
}
