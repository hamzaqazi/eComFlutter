import '../controller/main_landing_controller.dart';
import '../models/productlist_item_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget(
    this.productlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistItemModel productlistItemModelObj;

  var controller = Get.find<MainLandingController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 171.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: productlistItemModelObj.oliveplaindress!.value,
              height: 236.v,
              width: 171.h,
              radius: BorderRadius.circular(
                8.h,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Obx(
            () => Text(
              productlistItemModelObj.womenBlueSkinny!.value,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 15.v),
          Obx(
            () => Text(
              productlistItemModelObj.price!.value,
              style: CustomTextStyles.titleSmallPrimarySemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
