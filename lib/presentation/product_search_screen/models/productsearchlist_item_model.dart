import '../../../core/app_export.dart';

/// This class is used in the [productsearchlist_item_widget] screen.
class ProductsearchlistItemModel {
  ProductsearchlistItemModel({
    this.longSleeveTshirt,
    this.longSleeveTShirt,
    this.id,
  }) {
    longSleeveTshirt = longSleeveTshirt ?? Rx(ImageConstant.imgImage171x171);
    longSleeveTShirt = longSleeveTShirt ?? Rx("Long Sleeve T-shirt");
    id = id ?? Rx("");
  }

  Rx<String>? longSleeveTshirt;

  Rx<String>? longSleeveTShirt;

  Rx<String>? id;
}
