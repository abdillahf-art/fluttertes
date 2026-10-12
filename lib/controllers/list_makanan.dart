import 'package:fluttertes/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  List<MakananModel> dataMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng",
      hargaMakanan: "Rp 15.000",
      review: "Enak sekali!",
      rating: "4.5",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjOiM8avtZHzFPy8J11-ospALgKvtALlpA1B42pLsx4FRJJIS0a6HE2-_mCycQnTJRJyfiQMo4HDGAmv1sqracv0xhwG_jZK6LuHQ9fGDU&s=10",
      deskripsi: "Nasi goreng dengan bumbu spesial",
    ),
    MakananModel(
      namaMakanan: "Mie Goreng",
      hargaMakanan: "Rp 12.000",
      review: "Sedap!",
      rating: "4.2",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUT5plh-WVO0w_IDE39NJ4SZuALM0o98FpLoVt-_8uAKgRvJZNYZbxs8uZ8JSDF0-sQuO3ozpZm2vsTdrhRxmOPtVIAvlZb1kTvpFGkJdwAg&s=10",
      deskripsi: "Mie goreng dengan telur dan sayuran",
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar",
      hargaMakanan: "Rp 20.000",
      review: "Sedap!",
      rating: "4.3",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpxpnd5Bip_RCKImoXkx-W_Pc_nZw9IaTrXFls3UcHUlyDW0WrUQVH15leoZOlYPuLT1LUwszaBAanG619_FekeAMSYV12gvzV2dIx-nTThg&s=10",
      deskripsi: "Ayam bakar dengan bumbu rempah",
    ),
    MakananModel(
      namaMakanan: "Sate Ayam",
      hargaMakanan: "Rp 18.000",
      review: "Enak!",
      rating: "4.1",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsNW5nOXAn5w2A_oVemXMAN16oeuWLvbWMHcXSWVwYoejnEF5AndWI6fr9JAkHTnlyy8P9apMBX1GvkqS8RMY376_w7V0aOZx4M__sV3vRwg&s=10",
      deskripsi: "Sate ayam dengan saus kacang",
    ),
    MakananModel(
      namaMakanan: "Bakso",
      hargaMakanan: "Rp 10.000",
      review: "Lezat!",
      rating: "4.0",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWRqciPbNYhnshLA2f8S8AR9Bc3LHD_nUa7tPd7jLSnpbZbzHSRMX7oQb12DIwat33fLl-d0HsY4NpXRtC77H_LkuXV0U-kCKPhSJR9a1v&s=10",
      deskripsi: "Bakso daging sapi dengan kuah",
    ),
    MakananModel(
      namaMakanan: "Gado-Gado",
      hargaMakanan: "Rp 14.000",
      review: "Sayurnya segar!",
      rating: "4.2",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2Y_PsVWIAc9Oqj5p2zdMp-JvglLt-13Y0sZ78EHpJehM17FAo8dsZclapewPuZMQLBGrjKCUuaQldx37FTzVJlW2Oy37Wvb8bY78pGFft&s=10",
      deskripsi: "Sayuran rebus dengan bumbu kacang dan kerupuk",
    ),
    MakananModel(
      namaMakanan: "Rendang",
      hargaMakanan: "Rp 25.000",
      review: "Dagingnya empuk, bumbunya meresap",
      rating: "4.8",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS96bUOYmaZWMl3tYVrn_H82cnoibjTanv977ndlql_Ps5aVQR40NnqlZXb3pKpbSy_1GUIJ-FHcek0hsfvB2kr2zxmC5iooO8DX7j_YFcq3g&s=10",
      deskripsi: "Daging sapi dimasak lama dengan santan dan rempah",
    ),
  ];
}