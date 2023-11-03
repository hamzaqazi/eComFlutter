import 'productcarousel_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [product_detail_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductDetailPageModel {
  Rx<List<ProductcarouselItemModel>> productcarouselItemList =
      Rx(List.generate(1, (index) => ProductcarouselItemModel()));
}
