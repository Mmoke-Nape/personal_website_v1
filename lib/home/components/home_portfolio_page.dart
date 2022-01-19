import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/responsive/responsive.dart';
import 'package:personal_website/widgets/on_hover.dart';
import 'package:personal_website/widgets/project_display.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';

class HomePortfolioPage extends StatelessWidget {
  const HomePortfolioPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      // width: size.width,
      color: Color(0xff0a080d),
      child: Stack(
        children: [
          Positioned(
            top: Responsive.isMobile(context) ? 30 : 90,
            left: Responsive.isMobile(context) ? 30 : 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        child: Divider(
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Portfolio',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * .02),
                Text(
                  'All Creative Works,\nSelected Projects.',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                        fontSize: Responsive.isMobile(context) ? 30 : null,
                      ),
                ),
                SizedBox(height: size.height * .04),
                SizedBox(
                  width: Responsive.isMobile(context)
                      ? size.width * .5
                      : size.width * .25,
                  child: Text(
                    'A culmination of projects I developed or was heavily involved in',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.grey[700], letterSpacing: 3),
                  ),
                ),
                SizedBox(height: size.height * .04),
                UnderlinedTextArrow(
                  text: "More to come...",
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
          ProjectDisplay(
            image: 'assets/images/MockUps/Mockup.png',
            size: size,
            top: Responsive.isMobile(context)
                ? size.height * .4
                : size.height * .15,
            right: Responsive.isMobile(context) ? null : size.width * .1,
            left: Responsive.isMobile(context) ? 0 : null,
          ),
        ],
      ),
    );
  }
}
