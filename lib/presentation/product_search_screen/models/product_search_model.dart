import '../../../core/app_export.dart';
import 'productsearchlist_item_model.dart';

/// This class defines the variables used in the [product_search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductSearchModel {
  Rx<List<ProductsearchlistItemModel>> productsearchlistItemList = Rx([
    ProductsearchlistItemModel(
        longSleeveTshirt: ImageConstant.imgImage171x171.obs,
        longSleeveTShirt: "Long Sleeve T-shirt".obs),
    ProductsearchlistItemModel(
        longSleeveTshirt: ImageConstant.imgImage7.obs,
        longSleeveTShirt: "Sliders".obs),
    ProductsearchlistItemModel(
        longSleeveTshirt: ImageConstant.imgImage8.obs,
        longSleeveTShirt: "Slippers".obs),
    ProductsearchlistItemModel(
        longSleeveTshirt: ImageConstant.imgImage9.obs,
        longSleeveTShirt: "Long Sleeve Top".obs),
    ProductsearchlistItemModel(
        longSleeveTshirt: ImageConstant.imgImage10.obs,
        longSleeveTShirt: "Slip Dress".obs),
    ProductsearchlistItemModel(
        longSleeveTshirt: ImageConstant.imgImage11.obs,
        longSleeveTShirt: "Nike Slides".obs)
  ]);
}
