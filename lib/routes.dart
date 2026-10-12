import 'package:fluttertes/pages/confirm_registration_page.dart';
import 'package:fluttertes/pages/registration_page.dart';
import 'package:fluttertes/pages/list_makanan_page.dart';
import 'package:fluttertes/pages/detail_makanan_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registraion = "/registraion";
  static const String confirm_registraion = "/confirm_registraion";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  // dll

  // kita masukkan ke dalam myPages array
  static final myPages = [
    GetPage(name: registraion, page: () => RegistrationPage()),
    GetPage(name: confirm_registraion, page: () => ConfirmRegistrationPage()),
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),

    // dll
  ];
}