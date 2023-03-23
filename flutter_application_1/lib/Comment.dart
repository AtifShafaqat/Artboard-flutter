import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'CommentCard1.dart';
import 'Contact_us.dart';
import 'Drawer.dart';
import 'MyProfile.dart';
import 'Spam.dart';
import 'Term and policey.dart';
import 'Upgrade Account.dart';
import 'comment_Card.dart';
import 'loginpage.dart';
import 'my_post.dart';
class CommentPage extends StatelessWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(child:
    Scaffold(
      appBar: AppBar(
        elevation: 0,

        centerTitle: true,
        title: Text('COMMENTS'),
        leading: IconButton(icon: const Icon(Icons.arrow_back,color: Colors.white,),
          onPressed: ()=> Navigator.of(context).pop(),
        ),
        // actions: const [Icon(Icons.menu)],
      ),
      endDrawer: DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children:  const [
            Padding(
              padding: EdgeInsets.only(left: 8,right: 8),
              child: CommentCard(),
            ),
            SizedBox(height: 2,),
            Padding(
              padding: EdgeInsets.only(left: 4,right: 4),
              child: Comment1(),
            ),
            SizedBox(height: 1,),
            Padding(
              padding: EdgeInsets.only(left:8 ,right: 8),
              child: CommentCard(),
            ),
            SizedBox(height: 2,),
            Padding(
              padding: EdgeInsets.only(left: 4,right: 4),
              child: Comment1(),
            ),
            SizedBox(height: 2,),
            Padding(
              padding: EdgeInsets.only(left: 4,right: 4),
              child: Comment1(),
            ),
            SizedBox(height: 2,),
            Padding(
              padding: EdgeInsets.only(left: 4,right: 4),
              child: Comment1(),
            ),
            SizedBox(height: 2,),




          ],

        ),
      ),
    )
    );
  }
}
