import 'package:flutter/material.dart';
import 'package:super_banners/super_banners.dart';

import 'Choice.dart';
import 'Drawer.dart';
import 'SelectCard.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          ),
      endDrawer: DrawerWidget(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return Padding(
              padding: const EdgeInsets.all(1.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 325,
                      crossAxisCount: 1,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 4),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Banner(
                      message: 'Company',
                      location: BannerLocation.topEnd,
                      color: Colors.red,
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        // decoration:
                        //     BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: SelectCard(choice: choice[index]),
                      ),
                    );
                  }),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: GridView.builder(
                  primary: false,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 280,
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 6),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Banner(
                      message: 'Company',
                      location: BannerLocation.topEnd,
                      color: Colors.red,
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        // decoration:
                        //     BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: SelectCard(choice: choice[index]),
                      ),
                    );
                  }),
            );
          }
        },
      ),
    );
  }
}
