import 'package:get/get.dart';
import 'package:flutter/material.dart';

class KalkulatorController extends GetxController {
    var hasilHitung = 0.0.obs; // obs digunakan untuk update ke UI page

  // cek apakah kedua input valid (tidak kosong dan berupa angka)
  bool cekInput(String teks1, String teks2) {
    if (double.tryParse(teks1) == null || double.tryParse(teks2) == null) {
      Get.snackbar(
        "Peringatan",
        "Angka 1 dan Angka 2 tidak boleh kosong",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
    return true;
  }


  void tambah(double angka1, double angka2) {
    double hasiltambah = angka1 + angka2;
    hasilHitung.value = hasiltambah;
    Get.snackbar("hasil tambah", hasiltambah.toString(),
        snackPosition: SnackPosition.BOTTOM);
  }
  void kurang(double angka1, double angka2) {
    double hasilkurang = angka1 - angka2;
    hasilHitung.value = hasilkurang;
    Get.snackbar("hasil kurang", hasilkurang.toString(),
        snackPosition: SnackPosition.BOTTOM);
  }
  void kali(double angka1, double angka2) {
    double hasilkali = angka1 * angka2;
    hasilHitung.value = hasilkali;
    Get.snackbar("hasil kali", hasilkali.toString(),
        snackPosition: SnackPosition.BOTTOM);
  }
  void bagi(double angka1, double angka2) {
    if (angka2 == 0) {
      Get.snackbar("Error", "Tidak bisa membagi dengan nol",
          snackPosition: SnackPosition.BOTTOM);
      return;
    }
    double hasildagi = angka1 / angka2;
    hasilHitung.value = hasildagi;
    Get.snackbar("hasil bagi", hasildagi.toString(),
        snackPosition: SnackPosition.BOTTOM);
  }
}