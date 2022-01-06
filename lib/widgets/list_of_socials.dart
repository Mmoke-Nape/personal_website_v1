import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListOfSocials extends StatelessWidget {
  const ListOfSocials({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      // width: size.width * .3,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              '/icons/linkedin_outline.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              '/icons/github_cat.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              '/icons/instagram.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              '/icons/facebook.svg',
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
