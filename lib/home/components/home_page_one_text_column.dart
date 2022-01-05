import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/widgets/underlined_text_arrow.dart';

class HomePageOneTextColumn extends StatelessWidget {
  const HomePageOneTextColumn({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 260,
      right: -size.width * .02,
      child: Container(
        width: size.width * .24,
        // color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Software Engineer Undergrad    \t",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1.3,
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Divider(
                    color: Theme.of(context).primaryColor,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Based in Johannesburg, South Africa. I'm a web and mobile developer.",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(height: 30),
            Text(
              "An enthusiastic software engineer undergrad ready to imact the world of tech by delivering high quality products while doing everything else I love",
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(color: Colors.grey, letterSpacing: 3),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () => Get.toNamed('/about'),
              child: UnderlinedTextArrow(
                text: "My story",
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
