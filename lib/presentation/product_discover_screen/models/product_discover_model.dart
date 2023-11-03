import '../../../core/app_export.dart';
import 'productdiscoverlist_item_model.dart';

/// This class defines the variables used in the [product_discover_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDiscoverModel {
  Rx<List<ProductdiscoverlistItemModel>> productdiscoverlistItemList = Rx([
    ProductdiscoverlistItemModel(
        image: ImageConstant.imgImage3.obs,
        womenBlueSkinny: "Women Blue Skinny Fit High-Rise Light Fade ".obs,
        price: " 13.99".obs),
    ProductdiscoverlistItemModel(
        image: ImageConstant.imgImage4.obs,
        womenBlueSkinny:
            "Blue Pure Cotton Relaxed Fit High-Rise Clean Look ".obs,
        price: " 24.99".obs),
    ProductdiscoverlistItemModel(
        image: ImageConstant.imgImage5.obs,
        womenBlueSkinny: "Women Blue Skinny Fit High-Rise Light Fade ".obs,
        price: " 13.99".obs),
    ProductdiscoverlistItemModel(
        image: ImageConstant.imgImage6.obs,
        womenBlueSkinny:
            "Fit High-Rise Clean Look Stretchable Cropped Jeans".obs,
        price: " 24.99".obs)
  ]);
}
