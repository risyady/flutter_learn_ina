import 'package:flutter/material.dart';
import 'package:flutter_learn_ina/data/wisata_data.dart';
import 'package:flutter_learn_ina/model/wisata_model.dart';

class GridWisataScreen extends StatelessWidget {
  static String id = "grid";
  const GridWisataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid Wisata"),
      ),
      body: GridView.builder(
        itemCount: WisataData.itemCount,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          WisataModel? wisata = WisataData.getItemWisata(index);
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Card(
              color: Colors.amber,
              elevation: 8,
              shadowColor: Colors.yellow,
              child: Column(
                children: [
                  Flexible(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      child: Image.asset(
                        wisata!.gambarWisata!,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        wisata.namaWisata!,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
