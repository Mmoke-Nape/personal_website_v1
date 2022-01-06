import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/home/components/home_about_clipper.dart';
import 'package:personal_website/home/home_screen.dart';
import 'package:personal_website/widgets/starting_new_project_container.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';

import '../constants.dart';
import 'contact_full_triangle_clipper.dart';
import 'footer.dart';

class HomeLearnAboutPage extends StatelessWidget {
  const HomeLearnAboutPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 1.7,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [black, Colors.purple],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      // color: black,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: HomeAboutClipper(),
            child: Container(
              clipBehavior: Clip.none,
              width: size.width * .9,
              height: size.height,
              // color: Colors.green,
              color: black,
            ),
          ),
          Positioned(
            top: 200,
            right: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Learn a little bit \nabout my skills\nand',
                  textAlign: TextAlign.right,
                  style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed('/about'),
                  child: const UnderlinedTextArrow(
                    text: 'Me',
                    color: Colors.teal,
                    textSize: 47,
                    iconSize: 45,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: -50,
            left: size.width * .1,
            child: StartingProjectContainer(size: size),
          ),
          Positioned(
            left: 160,
            top: 200,
            child: Container(
              width: size.width * .6,
              height: size.height - 200,
              // color: Colors.amber,
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -30,
                    left: size.width * .1,
                    child: Image.asset(
                      '/images/laptop.png',
                      height: 250,
                    ),
                  ),
                  Positioned(
                    right: size.width * .06,
                    bottom: 0,
                    child: Transform.rotate(
                      angle: -math.pi / -12,
                      child: Image.asset(
                          '/images/White_King_Chess_clip_art_medium-new.png',
                          height: 500,
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child: SvgPicture.asset(
                      '/icons/basketball.svg',
                      height: 400,
                      color: Colors.orange[900],
                    ),
                  ),
                  Image.asset('/images/line-suit-white.png'),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: size.height * .2,
            left: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    SizedBox(
                      width: 30,
                      child: Divider(
                        color: Colors.white60,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "Let's work together.",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: size.width * .32,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            // color: Colors.grey[350],
                            color: Colors.white60,
                            fontSize: 18,
                            letterSpacing: 3,
                          ),
                      children: const [
                        TextSpan(
                            text:
                                "If you'd like to hire me or talk about a project you want help with, just drop me a message at"),
                        TextSpan(
                          text: " napemmoke@gmail.com",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        TextSpan(
                            text:
                                "I'm currently available for any internships, startup projects and freelance work."),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const SendMeAnEmailButton()
              ],
            ),
          ),
          Positioned(
            bottom: size.height * .2,
            right: size.width * .07,
            child: Transform.rotate(
              angle: -math.pi * 12,
              child: ClipPath(
                // clipBehavior: Clip.none,
                clipper: ContactFullTriangleClipper(),
                child: Container(
                  color: Colors.teal,
                  width: size.width * .35,
                  height: size.height * .45,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: size.height * .2,
            right: size.width * .1,
            child: Container(
              // color: Colors.teal,
              width: size.width * .3,
              height: size.height * .4,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    bottom: 0,
                    child: Image.asset('/images/me/bottom.png',
                        height: size.height * .5, fit: BoxFit.fitHeight),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Footer(size: size),
          ),
        ],
      ),
    );
  }
}
