import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'Comment.dart';
import 'Contact_us.dart';
import 'MyProfile.dart';
import 'Spam.dart';
import 'Term and policey.dart';
import 'Upgrade Account.dart';
import 'loginpage.dart';
import 'my_post.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      backgroundColor: Colors.transparent,
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 60, top: 55),
          child: UserAccountsDrawerHeader(
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/menicon.png'),
            ),
            decoration: const BoxDecoration(color: Colors.transparent),
            accountName: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyProfile()));
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 12, left: 2),
                child: Text('Profile Page',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            accountEmail: const Padding(
              padding: EdgeInsets.only(
                left: 40,
              ),
              child: Text(
                '123',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MyProfile()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.post_add_outlined,
            color: Colors.white,
          ),
          title: const Text(
            'My PostPage',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyPostPage(heading: '',)));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.markunread_mailbox_sharp,
            color: Colors.white,
          ),
          title: const Text(
            'Spam Details',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const SpamDetail()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
          title: const Text(
            'Comment',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CommentPage()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.account_balance_wallet,
            color: Colors.white,
          ),
          title: const Text(
            'Upgrade Account',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const UpgradeAccount()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.policy_outlined,
            color: Colors.white,
          ),
          title: const Text(
            'Term And Policey',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TermAndPolicey()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.contact_page,
            color: Colors.white,
          ),
          title: const Text(
            'Contact Us',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ContactUs()));
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
          title: const Text(
            'Logout',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          },
        ),
        ThemeSwitcher(
          builder: (context) {
            return Switch(
              value: ThemeModelInheritedNotifier.of(context).theme ==
                  ThemeData(

                      primarySwatch: Colors.red),
              onChanged: (needBlue) {
                ThemeSwitcher.of(context).changeTheme(
                  theme: needBlue != null && needBlue
                      ? ThemeData(primarySwatch: Colors.red)
                      : ThemeData(primarySwatch: Colors.indigo),
                );
              },
            );
          },
        ),
      ]),
    );
  }
}
