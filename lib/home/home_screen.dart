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
import 'package:personal_website/home/components/home_learn_about_page.dart';
import 'package:personal_website/widgets/list_of_socials.dart';
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
              CustomAppBar(
                isShopApp: false,
                size: size,
              ),
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
