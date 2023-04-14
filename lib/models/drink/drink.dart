import 'package:freezed_annotation/freezed_annotation.dart';
part 'drink.freezed.dart';
part 'drink.g.dart';

@freezed
class Drink with _$Drink {
  const factory Drink({
    required int id,
    required String name,
    required String imagePath,
  }) = _Drink;

  factory Drink.fromJson(Map<String, Object?> json) => _$DrinkFromJson(json);
}
