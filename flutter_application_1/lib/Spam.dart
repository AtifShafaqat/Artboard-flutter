import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'PostCard.dart';
class SpamDetail extends StatelessWidget {
  const SpamDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,

        title: const Text('Spam Detail'),

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(children: [
        Container(
          height: 205,
          width: 750,
          child: const Image(image: AssetImage('assets/network.jpg')),
        ),
        const SizedBox(height: 20,),
       Padding(
          padding: EdgeInsets.only(left: 12,right: 12),
          child: PostCard(),
        ),
        Padding(padding: EdgeInsets.only(top: 160,left: 170),
        child:  FloatingActionButton(
          elevation: 0,
          child: Icon(Icons.thumb_up_alt_outlined,size: 20,),onPressed: (){},



        ),
        )

      ]),
    ));
  }
}
