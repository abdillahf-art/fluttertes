import 'dart:ui' show PointerDeviceKind;
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fluttertes/controllers/list_makanan.dart';
import 'package:fluttertes/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Menu Makanan",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: 160,
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.trackpad,
                  },
                ),
                child: Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.dataMakanan.length,
                    itemBuilder: (context, index) {
                      final makanan = controller.dataMakanan[index];
                      return SizedBox(
                        width: 220,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: InkWell(
                            splashColor: Colors.blue.withOpacity(0.3),
                            highlightColor: Colors.blue.withOpacity(0.1),
                            onTap: () {
                              Get.toNamed(
                                Routes.detail_makanan,
                                arguments: makanan,
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    makanan.namaMakanan,
                                    style: const TextStyle(fontSize: 20),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    makanan.hargaMakanan,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  const Spacer(),
                                  const Align(
                                    alignment: Alignment.bottomRight,
                                    child: Icon(Icons.arrow_forward_ios_rounded),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}