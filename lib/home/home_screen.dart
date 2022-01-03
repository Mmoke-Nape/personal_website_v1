import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/home/components/home_about_clipper.dart';
import 'package:personal_website/widgets/custom_appbar.dart';
import 'package:personal_website/widgets/project_display.dart';
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
                      child: Container(
                        // color: Colors.green,
                        width: size.width * .2,
                        child: Row(
                          children: [
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
                      ),
                    ),
                  ],
                ),
              ),
              HomePortfolioPage(size: size),
              Container(
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
                      child: RichText(
                        textAlign: TextAlign.right,
                        text: TextSpan(
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                          children: const [
                            TextSpan(text: 'Learn a little\nbit about'),
                            TextSpan(
                              text: '\nMe',
                              style: TextStyle(
                                  color: Colors.teal,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: -50,
                      left: size.width * .1,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 20,
                        ),
                        width: size.width * .5,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.email,
                                size: 60, color: Colors.purple),
                            const SizedBox(width: 20),
                            Container(
                              height: double.infinity,
                              width: 2,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Starting a new project?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: black,
                                      ),
                                ),
                                Text(
                                  'Get an estimate for the new project',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          color: Colors.grey, letterSpacing: 3),
                                ),
                              ],
                            ),
                            const SizedBox(width: 70),
                            ConsultButton(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConsultButton extends StatefulWidget {
  ConsultButton({
    Key? key,
  }) : super(key: key);

  @override
  State<ConsultButton> createState() => _ConsultButtonState();
}

class _ConsultButtonState extends State<ConsultButton> {
  var isHovering = false;

  var downloadColor = Colors.teal;

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
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: isHovering ? Colors.teal : Colors.purple,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 50,
        child: Row(
          children: const [
            Icon(Icons.clean_hands_rounded, size: 30),
            SizedBox(width: 10),
            Text('Consult Me!')
          ],
        ),
      ),
    );
  }
}
