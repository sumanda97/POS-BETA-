part of 'models.dart';

class ProductItem {
  final String name;
  final String description;
  final int price;
  final String picturePath;

  ProductItem({
    @required this.name,
    @required this.picturePath,
    @required this.description,
    @required this.price,
  });
}
