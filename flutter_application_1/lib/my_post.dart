import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Comment.dart';
import 'package:flutter_application_1/Contact_us.dart';
import 'package:flutter_application_1/Spam.dart';
import 'package:flutter_application_1/Term%20and%20policey.dart';
import 'package:flutter_application_1/Upgrade%20Account.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'Drawer.dart';
import 'MyProfile.dart';
import 'PostCard.dart';

class MyPostPage extends StatefulWidget {
  const MyPostPage({Key? key, required this.heading}) : super(key: key);
  final String heading ;
  @override
  State<MyPostPage> createState() => _MyPostPageState();
}

class _MyPostPageState extends State<MyPostPage> {




  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'My Posts',
            style: TextStyle(),
          ),
        ),
        drawer: const DrawerWidget(),
        body:
        Padding(
          padding: const EdgeInsets.only(
            left: 17,
            right: 17,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 6, right: 6, top: 8),
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'search Here',
                        border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(13)))),
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),
                PostCard(),
                const SizedBox(
                  height: 8,
                ),
                PostCard(),
                const SizedBox(
                  height: 8,
                ),
                PostCard()
              ],
            ),
          ),
        ),


      ),
    );
  }
}

