import '../controller/product_search_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductSearchScreen.
///
/// This class ensures that the ProductSearchController is created when the
/// ProductSearchScreen is first loaded.
class ProductSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductSearchController());
  }
}
