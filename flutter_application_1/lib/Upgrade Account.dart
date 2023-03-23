import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';

class UpgradeAccount extends StatelessWidget {
  const UpgradeAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(child:  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        title: const Text('Upgrade Accounts'),

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      endDrawer: DrawerWidget(),
      body: SizedBox(
        width: 320,
        height:350,
        child: Padding(
          padding: const EdgeInsets.only(left: 50,top: 50,),
          child: Card(
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Container(
                  height: 180,
                  width: 200,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                  child: const Image(image: AssetImage('assets/visa.png')),
                ),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey)),
                  child: Row(children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Image(image: AssetImage('assets/v.jpg')),
                    ),
                    SizedBox(width: 10,),
                    Text('1234'),
                    SizedBox(width: 10,),
                    Text('1234'),
                    SizedBox(width: 10,),
                    Text('1234')
                  ]),
                ),
                SizedBox(height: 5,),
                Text('Security Code (CVV)'),
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Row(children: [
                    TextButton(onPressed: (){}, child: Text('CANCEL',style: TextStyle(fontSize: 11),)),

                    TextButton(onPressed: (){}, child: Text('SEND',style: TextStyle(fontSize: 11),),)
                  ],),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
