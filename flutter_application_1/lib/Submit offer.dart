import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubmitOffer extends StatelessWidget {
  const SubmitOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(child:
    Scaffold(
      appBar: AppBar(
        centerTitle: true,

        title: const Text('SUBMIT OFFER'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Container(
              height: 205,
              width: 750,
              child: const Image(image: AssetImage('assets/network.jpg')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130, top: 150),
              child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(color: Colors.red),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 100,
                  )),
            )
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 22),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: 'Scam Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            height: 250,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 60),
              child: TextField(
                textAlign: TextAlign.start,
                maxLines: null,
                expands: true,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: 'Description Here..',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: 400,
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {},
                child: const Text(
                  'SUBMIT',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          )
        ]),
      ),
    )
    );
  }
}
