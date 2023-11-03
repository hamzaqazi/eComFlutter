import '../controller/product_detail_page_controller.dart';
import '../models/productcarousel_item_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcarouselItemWidget extends StatelessWidget {
  ProductcarouselItemWidget(
    this.productcarouselItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcarouselItemModel productcarouselItemModelObj;

  var controller = Get.find<ProductDetailPageController>();

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle11,
      height: 289.v,
      width: 390.h,
    );
  }
}
