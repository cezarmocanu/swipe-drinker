import 'package:ai_drink/pages/swiper_page/widgets/swiper_card.dart';
import 'package:ai_drink/store/card_slice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwiperPage extends StatefulWidget {
  const SwiperPage({super.key});

  @override
  State<SwiperPage> createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CardSlice>(
      builder: (context, cardSlice, _) => Scaffold(
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16),
          child: Stack(children: [
            
            ...cardSlice.drinks
                .map(
                  (drink) => SwiperCard(
                    drink: drink,
                    isFront: cardSlice.drinks.last.id == drink.id,
                  ),
                )
                .toList(),
          ]),
        ),
      ),
    );
  }
}
