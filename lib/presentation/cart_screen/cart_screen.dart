import '../cart_screen/widgets/cart_item_widget.dart';
import 'controller/cart_controller.dart';
import 'models/cart_item_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:ecom/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecom/widgets/app_bar/appbar_title.dart';
import 'package:ecom/widgets/app_bar/custom_app_bar.dart';
import 'package:ecom/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(child: SingleChildScrollView(child: _buildCart()))
                ])),
            bottomNavigationBar: _buildPay11180()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftOnprimary,
            margin: EdgeInsets.only(left: 12.h, top: 20.v, bottom: 20.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_shopsie".tr),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCart() {
    return Padding(
        padding: EdgeInsets.only(bottom: 5.v),
        child: Column(children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text("lbl_my_cart".tr,
                      style: CustomTextStyles.bodyLarge_1))),
          SizedBox(height: 26.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Obx(() => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0.v),
                        child: SizedBox(
                            width: 358.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.gray300)));
                  },
                  itemCount:
                      controller.cartModelObj.value.cartItemList.value.length,
                  itemBuilder: (context, index) {
                    CartItemModel model =
                        controller.cartModelObj.value.cartItemList.value[index];
                    return CartItemWidget(model);
                  }))),
          SizedBox(height: 98.v),
          Divider(),
          SizedBox(height: 21.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text("lbl_sub_total".tr,
                            style: CustomTextStyles.titleSmallOnPrimary)),
                    Text("lbl_111_80".tr, style: theme.textTheme.titleMedium)
                  ])),
          SizedBox(height: 21.v),
          Divider()
        ]));
  }

  /// Section Widget
  Widget _buildPay11180() {
    return CustomElevatedButton(
        text: "lbl_pay_111_80".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 64.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
