import '../controller/main_landing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MainLandingScreen.
///
/// This class ensures that the MainLandingController is created when the
/// MainLandingScreen is first loaded.
class MainLandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainLandingController());
  }
}
