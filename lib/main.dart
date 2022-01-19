import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/about/about_page.dart';
import 'package:personal_website/screens/projects/shop%20app/shop_app_screen.dart';
import 'package:personal_website/widgets/home_learn_about_me_page_mobile.dart';
import 'package:url_strategy/url_strategy.dart';

import 'constants.dart';
import 'home/components/home_learn_about_page.dart';
import 'home/components/home_portfolio_page.dart';
import 'home/home_screen.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.black87,
            brightness: Brightness.dark,
            primaryColor: Color(0xff9f00ff)
            // const Color.fromRGBO(104, 42, 233, 1),
            // Colors.purple[500],
            ),
        home:
            //  HomePortfolioPage(),
            // ShopAppPage(),
            HomeScreen(),
        // HomeLearnAboutMePageMobile(),
        // HomeLearnAboutPage(),
        getPages: [
          GetPage(
            name: '/about',
            page: () => const AboutPage(),
            title: 'About',
          ),
          GetPage(
            name: '/work/shop-app',
            page: () => const ShopAppPage(),
            title: 'Shop App',
          ),
        ]);
  }
}
