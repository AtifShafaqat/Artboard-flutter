import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';

class TermAndPolicey extends StatelessWidget {
  const TermAndPolicey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: const Text('Terms and Policeys'),


        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      endDrawer: DrawerWidget(),
      body: Column(children: [
        Container(
          height: 205,
          width: 750,
          child: const Image(image: AssetImage('assets/network.jpg')),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'OUR TERMS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 22,right: 22),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
        ),
        const SizedBox(height: 25,),
        const Padding(
          padding: EdgeInsets.only(left: 22,right: 22),
          child: Text('There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour'),
        ),
        const SizedBox(height: 25,),
        const Padding(
          padding: EdgeInsets.only(left: 22,right: 22),
          child: Text('All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures'),
        )
      ]),
    ));
  }
}
