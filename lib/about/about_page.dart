import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_website/constants.dart';
import 'package:personal_website/widgets/consult_button.dart';
import 'package:personal_website/widgets/custom_appbar.dart';
import 'package:personal_website/widgets/list_of_socials.dart';
import 'package:personal_website/widgets/on_hover.dart';
import 'package:personal_website/widgets/starting_new_project_container.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      color: Colors.grey,
      fontSize: 16,
    );
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              // const SizedBox(height: 30),
              Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  Row(
                    children: [
                      ShaderMask(
                        shaderCallback: (rect) {
                          return const LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors: [Colors.transparent, Colors.black87],
                            stops: [.15, 1],
                          ).createShader(
                              Rect.fromLTRB(0, 0, rect.width, rect.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: Image.asset(
                          '/images/me/me_suit.png',
                          width: size.width * .4,
                          height: size.height,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: size.width * .77,
                      height: size.height,
                      // color: Colors.green,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            left: 0,
                            top: size.height * .5,
                            child: Container(
                              width: 1.5,
                              height: size.height * .5,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Theme.of(context).primaryColor,
                                      Colors.transparent
                                    ],
                                    stops: const [
                                      .7,
                                      1
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                            ),
                          ),
                          Positioned(
                            left: -4,
                            bottom: size.height * .5,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              // color: Colors.green,
                              width: size.width * .75,
                              height: size.height,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: size.height * .45),
                                    Text(
                                      'About Me',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2!
                                          .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: 30),
                                    Row(
                                      children: [
                                        ListOfSocials(size: size),
                                        const SizedBox(width: 20),
                                        // const Text(
                                        //   'Download my',
                                        //   style: TextStyle(color: Colors.grey),
                                        // ),
                                        // const SizedBox(width: 20),
                                        // const ConsultButton(
                                        //   text: 'resume',
                                        //   color: Colors.teal,
                                        //   icon: 'assets/icons/download.svg',
                                        // ),
                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    const Text(
                                      'An enthusiastic software engineer undergrad and freelancer.\nFrom and based in Johannesburg, South Africa',
                                      style: TextStyle(
                                          color: Colors.purple, fontSize: 18),
                                    ),
                                    const SizedBox(height: 40),
                                    const Text(
                                      'Main Skills',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          // mainAxisAlignment:
                                          // MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Frontend developer,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Backend developer,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'E-commerce',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'API intergration',
                                              style: style,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 60),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Flutter, Dart,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Python',
                                              style: style,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 60),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Strategic thinking,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Story telling',
                                              style: style,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 40),
                                    const Text(
                                      'Tools',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          // mainAxisAlignment:
                                          // MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Flutter,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Dart,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Firebase,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'JSON',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'MongoDB',
                                              style: style,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 60),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'SQL,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Java,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'C++,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'HTML,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'CSS',
                                              style: style,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 60),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'GitHub, Git,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Adobe Photoshop,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'SVG',
                                              style: style,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 60),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'VS Code,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'MySQL Workbench',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'IntelliJ IDEA',
                                              style: style,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 60),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Strategic thinking,',
                                              style: style,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Story telling',
                                              style: style,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 40),
                                    const Text(
                                      'Also busy with',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    const SizedBox(height: 25),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            const Text(
                                              'My AF1 customizing business ',
                                              style: style,
                                            ),
                                            GestureDetector(
                                              onTap: () => _launchUrl(
                                                  'https://www.instagram.com/dripout_customs/'),
                                              child: OnHover(
                                                isNav: false,
                                                builder: (hover) {
                                                  return Text(
                                                    '@dripout_customs',
                                                    style: style.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: hover
                                                          ? Theme.of(context)
                                                              .primaryColor
                                                          : Colors.white70,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 60),
                                        const Text(
                                          'Basketball',
                                          style: style,
                                        ),
                                        const SizedBox(width: 60),
                                        const Text(
                                          'Modeling',
                                          style: style,
                                        ),
                                        const SizedBox(width: 60),
                                        const Text(
                                          'Not sleeping 🤥',
                                          style: style,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 40),
                                    StartingProjectContainer(size: size),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: CustomAppBar(
                      size: size,
                      isShopApp: false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _launchUrl(String url) async {
  if (!await launch(
    url,
    forceSafariVC: false,
    forceWebView: true,
    enableJavaScript: true,
  )) throw 'Could not launch URL';
}
