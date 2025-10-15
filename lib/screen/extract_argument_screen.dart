import 'package:flutter/material.dart';
import 'package:flutter_learn_ina/argument/screen_arguments.dart';

class ExtractArgumentScreen extends StatelessWidget {
  const ExtractArgumentScreen({super.key});

  static const id = 'extractArguments';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
