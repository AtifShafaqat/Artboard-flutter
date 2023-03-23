import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';
import 'PostCard.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Profile'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      endDrawer: const DrawerWidget(),
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 205,
              width: 750,
              child: const Image(image: AssetImage('assets/network.jpg')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 60),
              child: Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/z.jpg'),
                  )),
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'About Me',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 26, right: 28),
            child: Text(
                'Lorem ipsum dolor sit amet, consecrate disciplining elite, sed do usermod temper incident ut labor et do lore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Recent Activity',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: PostCard(),
          ),
        ],
      ),
    ));
  }
}
