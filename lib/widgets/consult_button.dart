import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConsultButton extends StatefulWidget {
  const ConsultButton({
    Key? key,
    required this.text,
    required this.color,
    required this.icon,
  }) : super(key: key);
  final String text;
  final Color color;
  final String icon;
  @override
  State<ConsultButton> createState() => _ConsultButtonState();
}

class _ConsultButtonState extends State<ConsultButton> {
  var isHovering = false;

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
          horizontal: 25,
          // vertical: 5,
        ),
        decoration: BoxDecoration(
          color: isHovering ? widget.color : Colors.purple,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 50,
        child: Row(
          children: [
            SvgPicture.asset(
              widget.icon,
              height: 25,
              fit: BoxFit.fitHeight,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Text(widget.text),
          ],
        ),
      ),
    );
  }
}
