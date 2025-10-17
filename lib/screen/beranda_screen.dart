import 'package:flutter/material.dart';
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
          Row(
            children: [
              menuCard(
                Colors.green,
                FontAwesomeIcons.house,
                "List Wisata",
              ),
              menuCard(
                Colors.red,
                FontAwesomeIcons.house,
                "List Wisata",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Flexible menuCard(Color? color, IconData? icon, String? title) {
    return Flexible(
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
    );
  }
}
