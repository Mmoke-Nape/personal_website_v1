import 'package:flutter/material.dart';

import '../constants.dart';

class ProjectDisplay extends StatelessWidget {
  const ProjectDisplay({
    Key? key,
    required this.size,
    this.top,
    this.bottom,
    this.right,
    this.left,
  }) : super(key: key);

  final Size size;
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      left: left,
      bottom: bottom,
      child: Container(
          color: grey,
          // color: Theme.of(context).primaryColor,
          width: size.width * .25,
          height: size.height * .55,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Movie App.',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      'Product, Development',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: lighterBlack),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
