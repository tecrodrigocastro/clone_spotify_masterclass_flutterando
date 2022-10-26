// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardPartner extends StatelessWidget {
  final bool isCirlce;
  final String image;
  final String title;
  final String subtitle;
  const CardPartner({
    Key? key,
    required this.isCirlce,
    required this.image,
    required this.title,
    this.subtitle = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isCirlce ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: 150,
          decoration: BoxDecoration(
            shape: isCirlce ? BoxShape.circle : BoxShape.rectangle,
          ),
          child: isCirlce
              ? CircleAvatar(
                  backgroundImage: NetworkImage(
                    image,
                  ),
                )
              : Image(
                  image: NetworkImage(image),
                ),
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          subtitle,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
