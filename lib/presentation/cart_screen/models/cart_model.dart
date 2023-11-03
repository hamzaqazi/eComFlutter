import '../../../core/app_export.dart';
import 'cart_item_model.dart';

/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {
  Rx<List<CartItemModel>> cartItemList = Rx([
    CartItemModel(
        image: ImageConstant.imgImage110x109.obs,
        price: "12.50".obs,
        shortsInYellow: "shorts in Yellow".obs,
        one: "1".obs),
    CartItemModel(
        image: ImageConstant.imgImage12.obs,
        price: "99.30".obs,
        shortsInYellow: "Print Maxi Dress".obs,
        one: "1".obs)
  ]);
}
