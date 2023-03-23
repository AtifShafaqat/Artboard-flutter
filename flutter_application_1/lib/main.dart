import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_post.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart' as tp;
import 'Comment.dart';
import 'CommentCard1.dart';
import 'Contact_us.dart';
import 'MyProfile.dart';
import 'Pagination.dart';
import 'PostCard.dart';
import 'Spam.dart';
import 'Submit offer.dart';
import 'Term and policey.dart';

import 'Upgrade Account.dart';
import 'comment_Card.dart';
import 'loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final isPlatformDark =
        WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    final initTheme = isPlatformDark
        ? ThemeData(primarySwatch: Colors.red)
        : ThemeData(primarySwatch: Colors.indigo);
    return tp.ThemeProvider(
        initTheme: initTheme,
        builder: (_, myTheme) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: LoginPage(),
          );
        });
  }
}
