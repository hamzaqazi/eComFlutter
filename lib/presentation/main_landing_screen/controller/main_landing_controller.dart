import 'package:ecom/core/app_export.dart';
import 'package:ecom/presentation/main_landing_screen/models/main_landing_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MainLandingScreen.
///
/// This class manages the state of the MainLandingScreen, including the
/// current mainLandingModelObj
class MainLandingController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<MainLandingModel> mainLandingModelObj = MainLandingModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in mainLandingModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    mainLandingModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in mainLandingModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    mainLandingModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element in mainLandingModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    mainLandingModelObj.value.dropdownItemList2.refresh();
  }
}
