import '../controller/profile_profile_info_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileProfileInfoTabContainerScreen.
///
/// This class ensures that the ProfileProfileInfoTabContainerController is created when the
/// ProfileProfileInfoTabContainerScreen is first loaded.
class ProfileProfileInfoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileProfileInfoTabContainerController());
  }
}
