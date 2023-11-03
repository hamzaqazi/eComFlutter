import '../product_search_screen/widgets/productsearchlist_item_widget.dart';
import 'controller/product_search_controller.dart';
import 'models/productsearchlist_item_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:ecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProductSearchScreen extends GetWidget<ProductSearchController> {
  const ProductSearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [
              CustomTextFormField(
                controller: controller.searchBarController,
                hintText: "lbl_sl_iders".tr,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(10.h, 18.v, 6.h, 18.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSearch1,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 19.v, 10.h, 17.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 56.v,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 19.v),
                borderDecoration:
                    TextFormFieldStyleHelper.fillPrimaryContainer1,
                fillColor: theme.colorScheme.primaryContainer,
              ),
              SizedBox(height: 29.v),
              _buildProductSearchList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductSearchList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 200.v,
              crossAxisCount: 2,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.h,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: controller.productSearchModelObj.value
                .productsearchlistItemList.value.length,
            itemBuilder: (context, index) {
              ProductsearchlistItemModel model = controller
                  .productSearchModelObj
                  .value
                  .productsearchlistItemList
                  .value[index];
              return ProductsearchlistItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
