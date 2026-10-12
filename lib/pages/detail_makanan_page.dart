import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertes/components/custom_text.dart';
import 'package:fluttertes/controllers/list_detail_makanan.dart'; // sesuaikan nama file

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // GAMBAR
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    child: Image.network(
                      controller.image,
                      height: 220,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.image_not_supported, size: 100),
                    ),
                  ),
                ),

                // NAMA
                CustomText(
                  myText: controller.namaMakanan,
                  fontSize: 22,
                ),

                const SizedBox(height: 5),

                // HARGA
                CustomText(
                  myText: controller.hargaMakanan,
                  fontSize: 18,
                  myColor: Colors.blue,
                ),

                const SizedBox(height: 15),

                CustomText(myText: "Rating : ⭐ ${controller.rating}"),

                const SizedBox(height: 15),

                const CustomText(
                  myText: "Deskripsi",
                  fontSize: 17,
                ),

                const SizedBox(height: 5),

                CustomText(myText: controller.deskripsi),

                const SizedBox(height: 15),

                const CustomText(
                  myText: "Review",
                  fontSize: 17,
                ),

                const SizedBox(height: 5),

                CustomText(myText: controller.review),
              ],
            ),
          ),
        ),
      ),
    );
  }
}