import 'dart:html';
import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/home/components/home_about_clipper.dart';
import 'package:personal_website/widgets/consult_button.dart';
import 'package:personal_website/widgets/contact_full_triangle_clipper.dart';
import 'package:personal_website/widgets/custom_appbar.dart';
import 'package:personal_website/widgets/footer.dart';
import 'package:personal_website/widgets/project_display.dart';
import 'package:personal_website/widgets/starting_new_project_container.dart';
import 'package:personal_website/widgets/triangle_clipper.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';

import 'components/home_page_one_text_column.dart';
import 'components/home_portfolio_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(size: size),
              // const SizedBox(height: 30),
              Container(
                height: size.height - 100,
                width: size.width * .8,
                // color: Colors.blue,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: size.height * .1,
                      child: Text(
                        'Mmoke\n  Nape',
                        style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 155,
                            letterSpacing: .1),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: size.width * .23,
                      child: Container(
                        height: size.height * .93,
                        child: Image.asset(
                          '/images/me/me_again.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 110,
                      right: 57,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.teal,
                      ),
                    ),
                    Positioned(
                      top: 70,
                      right: 60,
                      child: Transform.rotate(
                        angle: -10,
                        child: ClipPath(
                          clipper: TriangleClipper(),
                          child: Container(
                            height: 80,
                            width: 140,
                            color: const Color(0xff4f4346),
                          ),
                        ),
                      ),
                    ),
                    HomePageOneTextColumn(size: size),
                    Positioned(
                      bottom: 100,
                      left: 0,
                      child: ListOfSocials(size: size),
                    ),
                  ],
                ),
              ),
              HomePortfolioPage(size: size),
              HomeLearnAboutPage(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class ListOfSocials extends StatelessWidget {
  const ListOfSocials({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      width: size.width * .3,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              '/icons/linkedin_outline.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              '/icons/github_cat.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              '/icons/instagram.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              '/icons/facebook.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

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
            left: 200,
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
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        child: Divider(
                          color: Colors.white60,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Contact',
                        style: TextStyle(
                          color: Colors.white60,
                        ),
                      ),
                    ],
                  ),
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

class SendMeAnEmailButton extends StatefulWidget {
  const SendMeAnEmailButton({
    Key? key,
  }) : super(key: key);

  @override
  State<SendMeAnEmailButton> createState() => _SendMeAnEmailButtonState();
}

class _SendMeAnEmailButtonState extends State<SendMeAnEmailButton> {
  var isHovering = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHovering = !isHovering;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: isHovering ? null : Colors.white,
        ),
        child: Row(
          children: const [
            Text("Send me an email", style: TextStyle(color: Colors.black)),
            SizedBox(width: 10),
            Icon(
              Icons.mail_outline,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
