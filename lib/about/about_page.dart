import 'package:flutter/material.dart';
import 'package:personal_website/constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(width: size.width, height: size.height, color: grey);
  }
}
