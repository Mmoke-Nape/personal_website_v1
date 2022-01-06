import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'on_hover.dart';

class NavButton extends StatefulWidget {
  const NavButton({
    Key? key,
    required this.text,
    required this.page,
  }) : super(key: key);

  final String text;
  final String page;
  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    if (Get.currentRoute == '/' && widget.text == 'Home') {
      return Text(
        widget.text,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(fontSize: 20, color: Theme.of(context).primaryColor),
      );
    }
    if (Get.currentRoute == '/about' && widget.text == 'About') {
      return Text(
        widget.text,
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(fontSize: 20, color: Theme.of(context).primaryColor),
      );
    }
    return OnHover(
      isNav: true,
      builder: (isHovered) {
        return Text(
          widget.text,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
              fontSize: 20,
              color: isHovered ? Theme.of(context).primaryColor : Colors.white),
        );
      },
    );
  }
}
