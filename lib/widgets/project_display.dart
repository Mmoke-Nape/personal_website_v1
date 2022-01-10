import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import '../constants.dart';

class ProjectDisplay extends StatelessWidget {
  const ProjectDisplay({
    Key? key,
    required this.size,
    this.top,
    this.bottom,
    this.right,
    this.left,
    required this.image,
  }) : super(key: key);

  final Size size;
  final double? top;
  final double? bottom;
  final double? right;
  final double? left;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      left: left,
      bottom: bottom,
      child: GestureDetector(
        onTap: () {
          Get.toNamed('/work/shop-app');
        },
        child: Container(
            color: grey,
            // color: Theme.of(context).primaryColor,
            width: size.width * .4,
            height: size.height * .7,
            child: Stack(
              // clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Shop App.',
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
                ),
                Positioned(
                  top: size.height * .24,
                  left: -50,
                  child: Transform.rotate(
                    angle: -math.pi / 20,
                    child: Container(
                      width: size.width * .55,
                      height: size.height * .4,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.orange.shade900,
                            Colors.orange.shade200,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * .05,
                  left: size.width * .09,
                  child: SizedBox(
                    child: Image.asset(image),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
