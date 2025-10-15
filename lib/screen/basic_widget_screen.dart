import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BasicWidgetScreen extends StatelessWidget {
  const BasicWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text(
          "flutter widget",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        elevation: 10,
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              if (kDebugMode) {
                print("object");
              }
            },
            icon: const Icon(
              Icons.alarm,
              color: Colors.white,
            ),
          ),
          const Icon(
            Icons.search,
            color: Colors.white,
          ),
          const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          const SizedBox(width: 10),
        ],
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Daftar jenis button",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                if (kDebugMode) {
                  print("Klik textButton");
                }
              },
              child: const Text("text button"),
            ),
            OutlinedButton(
              style: const ButtonStyle(
                side: WidgetStatePropertyAll(
                  BorderSide(
                    width: 5,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text("outlined button"),
            ),
            // ElevatedButton(onPressed: onPressed, child: child)
            // MaterialButton(onPressed: onPressed)
            // FloatingActionButton(onPressed: onPressed)
          ],
        ),
      ),
    );
  }
}
