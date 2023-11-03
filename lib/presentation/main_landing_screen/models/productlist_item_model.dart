import '../../../core/app_export.dart';

/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {
  ProductlistItemModel({
    this.oliveplaindress,
    this.womenBlueSkinny,
    this.price,
    this.id,
  }) {
    oliveplaindress = oliveplaindress ?? Rx(ImageConstant.imgImage);
    womenBlueSkinny = womenBlueSkinny ?? Rx("Olive plain dress");
    price = price ?? Rx(" 13.99");
    id = id ?? Rx("");
  }

  Rx<String>? oliveplaindress;

  Rx<String>? womenBlueSkinny;

  Rx<String>? price;

  Rx<String>? id;
}
