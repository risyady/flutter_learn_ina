import 'package:flutter/material.dart';
import 'package:flutter_learn_ina/data/wisata_data.dart';
import 'package:flutter_learn_ina/model/wisata_model.dart';

class ListWisata extends StatelessWidget {
  static String id = "wisata";
  const ListWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Wisata"),
      ),
      body: ListView.builder(
        itemCount: WisataData.itemCount,
        itemBuilder: (BuildContext context, int index) {
          WisataModel? wisata = WisataData.getItemWisata(index);
          return Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
            child: Card(
              color: Colors.amber,
              elevation: 8,
              shadowColor: Colors.yellow,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    child: Image.asset(
                      wisata!.gambarWisata!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Column(
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
