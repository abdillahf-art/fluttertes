class MakananModel {
  String namaMakanan;
  String hargaMakanan;
  String review;
  String rating;
  String image;
  String deskripsi;

  // ini konstruktor
  // agar nanti bisa langsung diisikan ketika membuat object
  MakananModel({
    required this.namaMakanan,
    required this.hargaMakanan,
    required this.review,
    required this.rating,
    required this.image,
    required this.deskripsi,
  });
}