import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'nav_button.dart';
import 'on_hover.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 100,
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.flutter_dash,
            size: 60,
            color: Theme.of(context).primaryColor,
          ),
          Container(
            // color: Colors.amber,
            width: size.width * .4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Home',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed('/about'),
                  child: NavButton(
                    text: 'About',
                  ),
                ),
                NavButton(
                  text: 'Contact',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
