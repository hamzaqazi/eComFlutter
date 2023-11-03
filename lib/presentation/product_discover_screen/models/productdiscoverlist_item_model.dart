import '../../../core/app_export.dart';

/// This class is used in the [productdiscoverlist_item_widget] screen.
class ProductdiscoverlistItemModel {
  ProductdiscoverlistItemModel({
    this.image,
    this.womenBlueSkinny,
    this.price,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgImage3);
    womenBlueSkinny =
        womenBlueSkinny ?? Rx("Women Blue Skinny Fit High-Rise Light Fade ");
    price = price ?? Rx(" 13.99");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? womenBlueSkinny;

  Rx<String>? price;

  Rx<String>? id;
}
