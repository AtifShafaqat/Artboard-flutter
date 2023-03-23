import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';


import 'Comment.dart';

class PostCard extends StatelessWidget {

  PostCard({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Row(
              children: [
                 Padding(
                  padding: EdgeInsets.only(left: 10, top: 20),
                  child: Text(
                   'Lorem Ipsum is simply dummy',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Positioned(
                    height: 10,
                    child: Container(
                      height: 30,
                      width: 16,
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: const Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    child: Text(
                      '10 Views',
                      style: TextStyle(fontSize: 12),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      color: Colors.white38,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 1),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.grey,
                    size: 14,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Like',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    )),
                const SizedBox(
                  width: 25,
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.message,
                      color: Colors.grey,
                      size: 14,
                    ),
                    const SizedBox(
                      width: 9,
                    ),

                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CommentPage()));
                        },
                        child: const Text(
                          'Comment',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        )),
                  ],
                ),
                const SizedBox(
                  width: 32,
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.share,
                      color: Colors.grey,
                      size: 14,
                    ),



                    TextButton(
                        onPressed: () {
                          Share.share('check out my website https://Deviate/com', subject: 'Look what I made!');

                        },
                        child: const Text(
                          'Share',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
