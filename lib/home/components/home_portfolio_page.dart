import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/widgets/on_hover.dart';
import 'package:personal_website/widgets/project_display.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';

class HomePortfolioPage extends StatelessWidget {
  const HomePortfolioPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      // width: size.width,
      color: black,
      child: Stack(
        children: [
          Positioned(
            top: 90,
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
                const SizedBox(height: 20),
                Text(
                  'All Creative Works,\nSelected Projects.',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: size.width * .25,
                  child: Text(
                    'A culmination of projects I developed or was heavily involved in',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.grey[700], letterSpacing: 3),
                  ),
                ),
                const SizedBox(height: 40),
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
            top: size.height * .15,
            right: size.width * .1,
          ),
        ],
      ),
    );
  }
}
