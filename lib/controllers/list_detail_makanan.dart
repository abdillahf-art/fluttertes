import 'package:get/get.dart';
import 'package:fluttertes/models/makanan_model.dart';

class ListDetailMakananController extends GetxController {
  late MakananModel makanan;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModel;
  }
}