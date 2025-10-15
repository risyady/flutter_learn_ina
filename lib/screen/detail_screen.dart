import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String id = "detail";
  final String? dataNama;

  const DetailScreen({super.key, this.dataNama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                dataNama!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Hero(
                tag: 'imageHero',
                child: Image.network('https://picsum.photos/250?image=9'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
