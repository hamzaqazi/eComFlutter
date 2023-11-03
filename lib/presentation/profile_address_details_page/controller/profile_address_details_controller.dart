import 'package:ecom/core/app_export.dart';
import 'package:ecom/presentation/profile_address_details_page/models/profile_address_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileAddressDetailsPage.
///
/// This class manages the state of the ProfileAddressDetailsPage, including the
/// current profileAddressDetailsModelObj
class ProfileAddressDetailsController extends GetxController {
  ProfileAddressDetailsController(this.profileAddressDetailsModelObj);

  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController postalCodeController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<ProfileAddressDetailsModel> profileAddressDetailsModelObj;

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    addressController1.dispose();
    cityController.dispose();
    postalCodeController.dispose();
    phoneNumberController.dispose();
  }
}
