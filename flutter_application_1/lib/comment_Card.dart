import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6),
      child: Card(
          elevation: 5,
          color: Colors.grey.shade200,
          child: Column(
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 33,
                    width: 33,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Name Here',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  '05_02_2022 02:55',
                  style: TextStyle(fontSize: 12),
                )
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: const Text(
                  'Lorem ipsum dolor sit amet, consecrate disciplining elite, sed do usermod temper incident ',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(bottom: 28),
                            child: FaIcon(
                              FontAwesomeIcons.message,
                              color: Colors.grey,
                              size: 12,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 28),
                            child: Text(
                              'Reply',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 28),
                            child: FaIcon(
                              FontAwesomeIcons.message,
                              color: Colors.grey,
                              size: 12,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 28),
                            child: Text(
                              'Replies',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 28),
                            child: FaIcon(
                              FontAwesomeIcons.heart,
                              color: Colors.grey,
                              size: 12,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 28),
                            child: Text(
                              'Like',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ],
          )),
    );
  }
}
