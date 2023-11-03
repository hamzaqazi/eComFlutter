import 'package:ecom/core/app_export.dart';
import 'package:ecom/presentation/product_discover_screen/models/product_discover_model.dart';

/// A controller class for the ProductDiscoverScreen.
///
/// This class manages the state of the ProductDiscoverScreen, including the
/// current productDiscoverModelObj
class ProductDiscoverController extends GetxController {
  Rx<ProductDiscoverModel> productDiscoverModelObj = ProductDiscoverModel().obs;
}
