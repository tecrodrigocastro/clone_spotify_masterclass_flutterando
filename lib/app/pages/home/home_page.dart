import 'package:flutter/material.dart';
import 'package:spotify_clone/app/data/data_last_songs.dart';
import 'package:spotify_clone/app/global/widgets/card_jump_back.dart';
import 'package:spotify_clone/app/global/widgets/card_widget.dart';
import 'package:spotify_clone/app/global/widgets/custom_bottom_navigation.dart';
import 'package:spotify_clone/app/model/card_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CardModel> cardLastSongs = getCardModel();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthSize = size.width;
    double heightSize = size.height;

    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        title: const Text('Good afternoon'),
        actions: [
          const Icon(Icons.notifications_active_outlined),
          SizedBox(width: widthSize * 0.026),
          const Icon(Icons.alarm_rounded),
          SizedBox(width: widthSize * 0.026),
          const Icon(Icons.settings),
          SizedBox(width: widthSize * 0.026),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
      bottomSheet: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey.shade700,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Image(
                image: NetworkImage(
                  'https://townsquare.media/site/366/files/2022/09/attachment-disturbed_divisive.jpg?w=1080&q=75',
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Disturbed  - Indestructible',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '🔈Desktop - REDRODRIGO',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.desktop_windows,
                color: Colors.green,
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.favorite,
                color: Colors.green,
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.pause,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(widthSize * 0.0213),
          child: Column(
            children: [
              SizedBox(
                height: widthSize * 0.133,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff131313),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Music',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff131313),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Podcasts & Shows',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: widthSize * 0.666,
                decoration: BoxDecoration(
                  color: const Color(0xff131313),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CardLastSongs(),
              ),
              const SizedBox(height: 10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Jump back in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CardPartner(
                      isCirlce: true,
                      image:
                          'https://westernnews.media.clients.ellingtoncms.com/img/photos/2020/12/29/OneRepublic_t715.jpg?529764a1de2bdd0f74a9fb4f856b01a9d617b3e9',
                      title: 'City and Colour',
                    ),
                    SizedBox(width: 8),
                    CardPartner(
                      isCirlce: false,
                      image:
                          'https://indiater.com/wp-content/uploads/2021/06/Free-Music-Album-Cover-Art-Banner-Photoshop-Template.jpg',
                      title: 'Guitar Hero',
                      subtitle: 'Playlist',
                    ),
                    SizedBox(width: 8),
                    CardPartner(
                      isCirlce: false,
                      image:
                          'https://cloud.netlifyusercontent.com/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',
                      title: 'Two Girls and The Cup',
                      subtitle: 'Playlist',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Discover something new',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 220,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CardPartner(
                      isCirlce: true,
                      image:
                          'https://westernnews.media.clients.ellingtoncms.com/img/photos/2020/12/29/OneRepublic_t715.jpg?529764a1de2bdd0f74a9fb4f856b01a9d617b3e9',
                      title: 'City and Colour',
                    ),
                    SizedBox(width: 8),
                    CardPartner(
                      isCirlce: false,
                      image:
                          'https://indiater.com/wp-content/uploads/2021/06/Free-Music-Album-Cover-Art-Banner-Photoshop-Template.jpg',
                      title: 'Guitar Hero',
                      subtitle: 'Playlist',
                    ),
                    SizedBox(width: 8),
                    CardPartner(
                      isCirlce: false,
                      image:
                          'https://cloud.netlifyusercontent.com/assets/344dbf88-fdf9-42bb-adb4-46f01eedd629/e2f9aa74-7587-4a30-b0c0-4df61d7ac308/43.jpg',
                      title: 'Two Girls and The Cup',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
