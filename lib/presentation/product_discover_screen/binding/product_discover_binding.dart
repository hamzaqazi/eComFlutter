import '../controller/product_discover_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductDiscoverScreen.
///
/// This class ensures that the ProductDiscoverController is created when the
/// ProductDiscoverScreen is first loaded.
class ProductDiscoverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductDiscoverController());
  }
}
