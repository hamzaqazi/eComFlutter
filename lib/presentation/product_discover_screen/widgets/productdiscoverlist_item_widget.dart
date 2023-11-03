import '../controller/product_discover_controller.dart';
import '../models/productdiscoverlist_item_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductdiscoverlistItemWidget extends StatelessWidget {
  ProductdiscoverlistItemWidget(
    this.productdiscoverlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductdiscoverlistItemModel productdiscoverlistItemModelObj;

  var controller = Get.find<ProductDiscoverController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: productdiscoverlistItemModelObj.image!.value,
            height: 236.v,
            width: 171.h,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          width: 153.h,
          child: Obx(
            () => Text(
              productdiscoverlistItemModelObj.womenBlueSkinny!.value,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ),
        SizedBox(height: 12.v),
        Obx(
          () => Text(
            productdiscoverlistItemModelObj.price!.value,
            style: CustomTextStyles.titleSmallPrimarySemiBold,
          ),
        ),
      ],
    );
  }
}
