import '../controller/product_search_controller.dart';
import '../models/productsearchlist_item_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductsearchlistItemWidget extends StatelessWidget {
  ProductsearchlistItemWidget(
    this.productsearchlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductsearchlistItemModel productsearchlistItemModelObj;

  var controller = Get.find<ProductSearchController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: productsearchlistItemModelObj.longSleeveTshirt!.value,
            height: 171.adaptSize,
            width: 171.adaptSize,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
        ),
        SizedBox(height: 11.v),
        Obx(
          () => Text(
            productsearchlistItemModelObj.longSleeveTShirt!.value,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
