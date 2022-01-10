import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_website/about/about_page.dart';
import 'package:personal_website/screens/projects/shop%20app/shop_app_screen.dart';

import 'constants.dart';
import 'home/components/home_learn_about_page.dart';
import 'home/home_screen.dart';

void main() {
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
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            scaffoldBackgroundColor: Colors.black87,
            brightness: Brightness.dark,
            primaryColor: Color(0xff9f00ff)
            // const Color.fromRGBO(104, 42, 233, 1),
            // Colors.purple[500],
            ),
        home:
            // ShopAppPage(),
            HomeScreen(),
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
