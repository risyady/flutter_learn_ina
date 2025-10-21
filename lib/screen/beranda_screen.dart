import 'package:flutter/material.dart';
import 'package:flutter_learn_ina/screen/grid_wisata_screen.dart';
import 'package:flutter_learn_ina/screen/list_wisata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BerandaScreen extends StatefulWidget {
  static String id = "beranda";
  const BerandaScreen({super.key});

  @override
  State<BerandaScreen> createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Beranda",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                menuCard(
                  Colors.green,
                  FontAwesomeIcons.house,
                  "List Wisata",
                  context,
                  ListWisata.id,
                ),
                menuCard(
                  Colors.red,
                  FontAwesomeIcons.house,
                  "Grid Wisata",
                  context,
                  GridWisataScreen.id,
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                menuCard(
                  Colors.blue,
                  FontAwesomeIcons.house,
                  "List Wisata",
                  context,
                  ListWisata.id,
                ),
                menuCard(
                  Colors.deepPurple,
                  FontAwesomeIcons.house,
                  "List Wisata",
                  context,
                  ListWisata.id,
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                menuCard(
                  Colors.green,
                  FontAwesomeIcons.house,
                  "List Wisata",
                  context,
                  ListWisata.id,
                ),
                menuCard(
                  Colors.red,
                  FontAwesomeIcons.house,
                  "List Wisata",
                  context,
                  ListWisata.id,
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                menuCard(
                  Colors.blue,
                  FontAwesomeIcons.house,
                  "List Wisata",
                  context,
                  ListWisata.id,
                ),
                menuCard(
                  Colors.deepPurple,
                  FontAwesomeIcons.house,
                  "List Wisata",
                  context,
                  ListWisata.id,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Flexible menuCard(
    Color? color,
    IconData? icon,
    String? title,
    BuildContext context,
    String? toScreen,
  ) {
    return Flexible(
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacementNamed(
            context,
            toScreen!,
          );
        },
        child: Container(
          width: double.infinity,
          color: color,
          child: Column(
            children: [
              FaIcon(
                icon,
                color: Colors.white,
              ),
              Text(
                title!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
