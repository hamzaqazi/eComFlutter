import 'package:ecom/core/app_export.dart';
import 'package:ecom/presentation/profile_profile_info_page/models/profile_profile_info_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileProfileInfoPage.
///
/// This class manages the state of the ProfileProfileInfoPage, including the
/// current profileProfileInfoModelObj
class ProfileProfileInfoController extends GetxController {
  ProfileProfileInfoController(this.profileProfileInfoModelObj);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Rx<ProfileProfileInfoModel> profileProfileInfoModelObj;

  @override
  void onClose() {
    super.onClose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
  }
}
