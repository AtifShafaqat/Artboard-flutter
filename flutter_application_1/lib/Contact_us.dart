import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Contact Us'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      endDrawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.only(left: 50, top: 50),
            child: Text(
              'Contact Us',
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 10),
            child: Text('Lorem ipsum dolor sit amet, consectetur..'),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  hintText: 'Your Name'),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18, right: 18),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  hintText: 'Email'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 250,
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 60),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: null,
                expands: true,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: 'Description Here..',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)))),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
         SizedBox(
           height: 60,
           width: 400,
           child:  ElevatedButton(
               onPressed: () {},
               child: Text(
                 'SUBMIT',
                 style:
                 TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
               )),
         )
        ]),
      ),
    ));
  }
}
