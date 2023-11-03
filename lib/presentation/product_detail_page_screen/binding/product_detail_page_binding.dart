import '../controller/product_detail_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductDetailPageScreen.
///
/// This class ensures that the ProductDetailPageController is created when the
/// ProductDetailPageScreen is first loaded.
class ProductDetailPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDetailPageController());
  }
}
