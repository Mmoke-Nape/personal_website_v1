import 'package:flutter/material.dart';

import 'on_hover.dart';

class NavButton extends StatefulWidget {
  const NavButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
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
