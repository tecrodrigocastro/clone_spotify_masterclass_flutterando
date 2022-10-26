import 'package:flutter/cupertino.dart';

class CardModel {
  final String name;
  final NetworkImage image;
  CardModel({
    required this.name,
    required this.image,
  });

  static CardModel fromJson(json) => CardModel(
        name: json['name'],
        image: json['image'],
      );
}
