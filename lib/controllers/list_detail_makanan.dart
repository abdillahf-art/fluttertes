import 'package:get/get.dart';

class ListDetailMakananController extends GetxController {
  late String namaMakanan;
  late String hargaMakanan;
  late String review;
  late String rating;
  late String image;
  late String deskripsi;

  @override
  void onInit() {
    final arguments = Get.arguments;
    namaMakanan = arguments['namaMakanan'];
    hargaMakanan = arguments['hargaMakanan'];
    review = arguments['review'];
    rating = arguments['rating'];
    image = arguments['image'];
    deskripsi = arguments['deskripsi'];
  }
}