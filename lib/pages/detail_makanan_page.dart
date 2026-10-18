import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertes/components/custom_text.dart';
import 'package:fluttertes/controllers/list_detail_makanan.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final controller = Get.put(ListDetailMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FA),
      appBar: AppBar(
        title: const Text("Detail Makanan"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,

                    // GAMBAR
                    leading: Image.network(
                      controller.image,
                      width: 60,
                      height: 60,
                      fit: BoxFit.contain,
                    ),

                    // NAMA
                    title: Text(
                      controller.namaMakanan,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),

                    // HARGA + RATING
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          controller.hargaMakanan,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Colors.amber, size: 17),
                            const SizedBox(width: 4),
                            Text("${controller.rating}"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),

                  const CustomText(myText: "Deskripsi", fontSize: 17),
                  const SizedBox(height: 5),
                  CustomText(myText: controller.deskripsi),

                  const SizedBox(height: 15),

                  const CustomText(myText: "Review", fontSize: 17),
                  const SizedBox(height: 5),
                  CustomText(myText: controller.review),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}