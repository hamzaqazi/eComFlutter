import '../controller/main_landing_controller.dart';
import '../models/ninetyseven_item_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NinetysevenItemWidget extends StatelessWidget {
  NinetysevenItemWidget(
    this.ninetysevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NinetysevenItemModel ninetysevenItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: ninetysevenItemModelObj.outerwear!.value,
            height: 386.v,
            width: 358.h,
          ),
        ),
        SizedBox(height: 26.v),
        Obx(
          () => Text(
            ninetysevenItemModelObj.outerwear1!.value,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        SizedBox(height: 6.v),
        Obx(
          () => Text(
            ninetysevenItemModelObj.raincoatsSweaters!.value,
            style: CustomTextStyles.bodySmallBluegray400,
          ),
        ),
      ],
    );
  }
}
