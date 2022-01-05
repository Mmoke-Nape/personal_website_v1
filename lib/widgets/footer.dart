import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 200, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            'BUILT FROM SRATCH BY ME :)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white54,
            ),
          ),
          Text(
            'MMOKE NAPE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
