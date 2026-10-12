import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fluttertes/controllers/list_makanan.dart';
import 'package:fluttertes/routes.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Makanan")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.dataMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.dataMakanan[index];
            return InkWell(
              onTap: () {
                
                Get.toNamed(Routes.detail_makanan,arguments:
                {
                  'namaMakanan': makanan.namaMakanan,
                  'hargaMakanan': makanan.hargaMakanan,
                  'review': makanan.review,
                  'rating': makanan.rating,
                  'image': makanan.image,
                  'deskripsi': makanan.deskripsi, 
                });
              },
              child: ListTile(
                title: Text(makanan.namaMakanan, style: TextStyle(fontSize: 20)),
                subtitle: Text(makanan.hargaMakanan, style: TextStyle(fontSize: 20)),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            );
          },
        ),
      ),
    );
  }
}