import 'package:flutter/cupertino.dart';
import 'package:spotify_clone/app/model/card_model.dart';

List<CardModel> getCardModel() {
  const data = [
    {
      "name": "Liked Songs",
      "image": NetworkImage(
          'https://i.pinimg.com/originals/da/18/3e/da183e46c3de1eaefa4f6705ca9a50dd.jpg'),
    },
    {
      "name": "Edit Whiskers",
      "image": NetworkImage(
          'https://cdn.smehost.net/sonymusiccomau-auprod/wp-content/uploads/Havanna-Album-Artwork.jpeg')
    },
    {
      "name": "Old",
      "image": NetworkImage(
          'https://media.sellfy.com/images/fQjcOVwV/bv6JyrD1JbPUg72cpzmj/Hru1FBaQ2F.jpeg?w=760')
    },
    {
      "name": "Gym",
      "image": NetworkImage(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxFPly1gWM_zdPZO0loSBi8PZCnyDHmlBiaA&usqp=CAU')
    },
    {
      "name": "Daily Mix 3",
      "image": NetworkImage(
          'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/armament-guns-music-album-cover-template-design-ad762621b1abfd9221d49b92c7b4cb73_screen.jpg?ts=1635377043')
    },
    {
      "name": "💟",
      "image": NetworkImage('https://loremflickr.com/360/360/man')
    },
  ];
  return data.map<CardModel>(CardModel.fromJson).toList();
}
