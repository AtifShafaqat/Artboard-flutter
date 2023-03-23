import 'package:flutter/material.dart';

class Choice {
  Choice({this.title, this.image});
  final title;
  final image;
}

List<Choice> choice = <Choice>[
  Choice(title: 'Facebook', image: 'assets/fb.png'),
  Choice(title: 'Hp', image: 'assets/d.jpg'),
  Choice(title: 'Amazon', image: 'assets/amazon.jfif'),
  Choice(title: 'Dell', image: 'assets/dell.png')
];
