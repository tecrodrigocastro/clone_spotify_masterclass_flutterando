// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../data/data_last_songs.dart';
import '../../model/card_model.dart';

class CardLastSongs extends StatelessWidget {
  CardLastSongs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CardModel> cardLastSongs = getCardModel();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.2,
      ),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cardLastSongs.length,
      itemBuilder: (context, index) => Card(
        // ignore: sort_child_properties_last
        child: Row(
          children: [
            SizedBox(
              width: 80,
              child: Image(image: cardLastSongs[index].image),
            ),
            const SizedBox(width: 5),
            Text(
              cardLastSongs[index].name,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
        color: const Color(0xff121212),
      ),
    );
  }
}
