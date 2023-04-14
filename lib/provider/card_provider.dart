import 'package:flutter/material.dart';

enum CardStatus { like, dislike }

class CardProvider extends ChangeNotifier {
  List<String> _urlImages = [];
  bool _isDragging = false;
  double _angle = 0;
  Offset _position = Offset.zero;
  Size _screenSize = Size.zero;

  List<String> get urlImages => _urlImages;
  bool get isDragging => _isDragging;
  Offset get position => _position;
  double get angle => _angle;

  CardProvider() {
    resetUsers();
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
    if (_urlImages.isEmpty) return;

    await Future.delayed(Duration(milliseconds: 200));
    _urlImages.removeLast();
    resetPosition();
  }

  void resetUsers() {
    _urlImages = <String>[
      'https://www.acouplecooks.com/wp-content/uploads/2020/11/Pina-Colada-050-735x919.jpg',
      'https://www.homemadefoodjunkie.com/wp-content/uploads/2019/05/R-W-B.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRgveF6kJviLU9mn1_EmmejYW9XLfH__K0Fw&usqp=CAU',
      'https://insanelygoodrecipes.com/wp-content/uploads/2021/05/Refreshing-Sour-Cocktail-with-Cherry-on-Top-800x530.png',
      'https://insanelygoodrecipes.com/wp-content/uploads/2021/09/Cold-Purple-Blackberry-Mojitos-with-Fresh-Berries-683x1024.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSqAvIb3jZkXNlQROs23UH79-DX2R94eIVqg&usqp=CAU',
    ].reversed.toList();

    notifyListeners();
  }
}
