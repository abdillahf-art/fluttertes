import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fluttertes/controllers/list_makanan.dart';
import 'package:fluttertes/pages/detail_makanan_page.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Makanan")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.dataMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.dataMakanan[index];
              return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.startToEnd,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                child: Card(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => DetailMakananPage(), arguments: makanan);
                    },
                    child: ListTile(
                      title: Text(makanan.namaMakanan,
                          style: const TextStyle(fontSize: 20)),
                      subtitle: Text(makanan.hargaMakanan,
                          style: const TextStyle(fontSize: 20)),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}