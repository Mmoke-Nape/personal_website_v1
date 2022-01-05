import 'package:flutter/material.dart';

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
