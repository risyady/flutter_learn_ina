import 'package:flutter/material.dart';
import 'package:flutter_learn_ina/argument/screen_arguments.dart';
import 'package:flutter_learn_ina/screen/detail_screen.dart';
import 'package:flutter_learn_ina/screen/extract_argument_screen.dart';

class HomeScreen extends StatelessWidget {
  static String id = "home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beranda"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Beranda"),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DetailScreen(
                      dataNama: "Ibrahim Risyad",
                    );
                  },
                ),
              );
              /* Navigator.pushNamed(
                context,
                DetailScreen.id,
              ); */
              /* Navigator.pushNamedAndRemoveUntil(
                context,
                DetailScreen.id,
                (route) => false,
              ); */
            },
            child: Hero(
              tag: 'imageHero',
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                ExtractArgumentScreen.id,
                arguments: ScreenArguments(
                  "Ekstrak Melon",
                  "Pesan ini disampaikan oleh indofut",
                ),
              );
            },
            child: const Text("Anda dibawa ke sini oleh kekuatan aneh!"),
          ),
          TextButton(
            onPressed: () {
              // Navigator.pop(context);
              Navigator.pushNamed(
                context,
                ExtractArgumentScreen.id,
                arguments: ScreenArguments(
                  "Ekstrak Mangga",
                  "Pesan ini tidak disponsori, silahkan coba lagi esok!",
                ),
              );
            },
            child: const Text("kembali"),
          ),
        ],
      ),
    );
  }
}
