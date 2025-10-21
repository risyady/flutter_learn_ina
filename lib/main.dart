import 'package:flutter/material.dart';
import 'package:flutter_learn_ina/screen/beranda_screen.dart';
import 'package:flutter_learn_ina/screen/detail_screen.dart';
import 'package:flutter_learn_ina/screen/extract_argument_screen.dart';
import 'package:flutter_learn_ina/screen/grid_wisata_screen.dart';
import 'package:flutter_learn_ina/screen/home_screen.dart';
import 'package:flutter_learn_ina/screen/list_wisata.dart';
import 'package:flutter_learn_ina/screen/signup_screen.dart';
import 'package:flutter_learn_ina/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        BerandaScreen.id: (context) => const BerandaScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        DetailScreen.id: (context) => const DetailScreen(),
        SignupScreen.id: (context) => const SignupScreen(),
        ExtractArgumentScreen.id: (context) => const ExtractArgumentScreen(),
        ListWisata.id: (context) => const ListWisata(),
        GridWisataScreen.id: (context) => const GridWisataScreen(),
      },
      // home: SplashScreen(),
    );
  }
}
