import 'package:flutter/material.dart';

class UnderlinedTextArrow extends StatefulWidget {
  const UnderlinedTextArrow({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  State<UnderlinedTextArrow> createState() => _UnderlinedTextArrowState();
}

class _UnderlinedTextArrowState extends State<UnderlinedTextArrow> {
  @override
  Widget build(BuildContext context) {
    var hovering = true;
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          hovering = !hovering;
        });
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Theme.of(context).primaryColor),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                // decoration: TextDecoration.underline,
                // decorationThickness: 1.5,
                fontSize: 17,
              ),
            ),
            const SizedBox(width: 5),
            AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              alignment: Alignment(hovering ? -1 : 3, 0),
              curve: Curves.easeInOut,
              child: Icon(Icons.arrow_forward,
                  color: Theme.of(context).primaryColor, size: 17),
            ),
          ],
        ),
      ),
    );
  }
}
