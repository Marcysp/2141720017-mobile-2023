class Item {
  String name,imageUrl;
  double rating;
  String? deskripsi;
  int price, stock;

  Item({
    required this.name, 
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.stock,
    this.deskripsi});
}