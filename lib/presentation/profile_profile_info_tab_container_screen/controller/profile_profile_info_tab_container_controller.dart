import 'package:ecom/core/app_export.dart';
import 'package:ecom/presentation/profile_profile_info_tab_container_screen/models/profile_profile_info_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileProfileInfoTabContainerScreen.
///
/// This class manages the state of the ProfileProfileInfoTabContainerScreen, including the
/// current profileProfileInfoTabContainerModelObj
class ProfileProfileInfoTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ProfileProfileInfoTabContainerModel>
      profileProfileInfoTabContainerModelObj =
      ProfileProfileInfoTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 5));
}
