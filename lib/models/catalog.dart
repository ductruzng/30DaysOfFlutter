class CatalogModel {
  static final items = [
    Item(
        id: 0,
        title: "Amiral",
        name: "Chair",
        price: 85000,
        imageUrl:
            "https://pohjanmaan-prod.s3.amazonaws.com/uploads/product/product_image/317/amiral_1_labrador_1_main_image.png",
        description:
            "MAY")
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String title;
  final String imageUrl;

  Item(
      {required this.name,
      required this.id,
      required this.description,
      required this.price,
      required this.title,
      required this.imageUrl});
}
