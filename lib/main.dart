import 'package:bwa_firstday_ui/pages/first_checkout.dart';
import 'package:bwa_firstday_ui/pages/first_empty_activity.dart';
import 'package:bwa_firstday_ui/pages/first_pricing.dart';
import 'package:bwa_firstday_ui/pages/first_rating_screen.dart';
import 'package:bwa_firstday_ui/pages/first_splash.dart';
import 'package:bwa_firstday_ui/pages/first_started.dart';
import 'package:bwa_firstday_ui/pages/home_first.dart';
import 'package:bwa_firstday_ui/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(SevenDays());

class SevenDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstSplash(),
      initialRoute: '/',
      routes: {
        '/first_started': ((context) => FirstStarted()),
        '/home_first': ((context) => FirstHome()),
        '/login_page': ((context) => LoginPage()),
        '/first_empty': ((context) => FirstEmpty()),
        '/first_rating': (context) => FirstRating(),
        '/first_pricing': (context) => FirstPricing(),
        '/checkout_page': (context) => CheckoutPage(),
      },
    );
  }
}
