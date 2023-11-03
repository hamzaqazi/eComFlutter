import '../../../core/app_export.dart';

/// This class is used in the [cart_item_widget] screen.
class CartItemModel {
  CartItemModel({
    this.image,
    this.price,
    this.shortsInYellow,
    this.one,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage110x109);
    price = price ?? Rx("12.50");
    shortsInYellow = shortsInYellow ?? Rx("shorts in Yellow");
    one = one ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? price;

  Rx<String>? shortsInYellow;

  Rx<String>? one;

  Rx<String>? id;
}
