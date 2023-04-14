import 'dart:convert';
import 'dart:io';

import 'package:ai_drink/models/drink/drink.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../services/drink_service.dart';

enum CardStatus { like, dislike }

class CardSlice extends ChangeNotifier {
  final DrinkService _drinkService = DrinkService();

  List<Drink> _drinks = [];
  bool _isDragging = false;
  double _angle = 0;
  Offset _position = Offset.zero;
  Size _screenSize = Size.zero;

  List<Drink> get drinks => _drinks;
  bool get isDragging => _isDragging;
  Offset get position => _position;
  double get angle => _angle;

  CardSlice() {
    getCards();
  }

  void setScreenSize(Size screenSize) => _screenSize = screenSize;

  void startPosition(DragStartDetails details) {
    _isDragging = true;
    notifyListeners();
  }

  void updatePosition(DragUpdateDetails details) {
    _position += details.delta;

    final x = _position.dx;
    _angle = 45 * x / _screenSize.width;

    notifyListeners();
  }

  void endPosition() {
    _isDragging = false;
    notifyListeners();

    final status = getStatus();

    if (status == CardStatus.like) {
      like();
    } else if (status == CardStatus.dislike) {
      dislike();
    } else {
      resetPosition();
    }
  }

  void resetPosition() {
    _isDragging = false;
    _position = Offset.zero;
    _angle = 0;

    notifyListeners();
  }

  CardStatus? getStatus() {
    final x = _position.dx;
    const delta = 100;

    if (x >= delta) {
      return CardStatus.like;
    } else if (x <= -delta) {
      return CardStatus.dislike;
    }
  }

  void like() {
    _angle = 20;
    _position += Offset(_screenSize.width * 2, 0);
    _nextCard();

    notifyListeners();
  }

  void dislike() {
    _angle = -20;
    _position -= Offset(_screenSize.width * 2, 0);
    _nextCard();

    notifyListeners();
  }

  Future _nextCard() async {
    //TODO add page load
    if (_drinks.isEmpty) return;

    await Future.delayed(Duration(milliseconds: 200));
    _drinks.removeLast();
    resetPosition();
  }

  void getCards() async {
    Response r = await _drinkService.getDrinksList();

    if (r.statusCode == HttpStatus.ok) {
      final valuesList = (json.decode(r.body) as List).map((el) => Drink.fromJson(el)).toList();
      _drinks = valuesList;
    } else {
      _drinks = [];
    }

    notifyListeners();
  }
}
