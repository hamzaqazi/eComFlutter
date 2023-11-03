import 'controller/profile_profile_info_tab_container_controller.dart';
import 'package:ecom/core/app_export.dart';
import 'package:ecom/presentation/profile_address_details_page/profile_address_details_page.dart';
import 'package:ecom/presentation/profile_my_orders_page/profile_my_orders_page.dart';
import 'package:ecom/presentation/profile_profile_info_page/profile_profile_info_page.dart';
import 'package:ecom/presentation/profile_security_page/profile_security_page.dart';
import 'package:ecom/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecom/widgets/app_bar/appbar_title.dart';
import 'package:ecom/widgets/app_bar/custom_app_bar.dart';
import 'package:ecom/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfileProfileInfoTabContainerScreen
    extends GetWidget<ProfileProfileInfoTabContainerController> {
  const ProfileProfileInfoTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildProfileDetails(),
                  SizedBox(height: 18.v),
                  _buildTabview(),
                  Expanded(
                      child: SizedBox(
                          height: 443.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                ProfileProfileInfoPage(),
                                ProfileMyOrdersPage(),
                                ProfileSecurityPage(),
                                ProfileAddressDetailsPage(),
                                ProfileAddressDetailsPage()
                              ])))
                ]))));
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
  Widget _buildProfileDetails() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 104.h, vertical: 32.v),
        decoration: AppDecoration.white,
        child: Column(children: [
          SizedBox(
              height: 116.v,
              width: 100.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgProfileImage,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    radius: BorderRadius.circular(50.h),
                    alignment: Alignment.topCenter),
                Padding(
                    padding: EdgeInsets.only(left: 31.h),
                    child: CustomIconButton(
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        decoration: IconButtonStyleHelper.outlineBlack,
                        alignment: Alignment.bottomLeft,
                        child:
                            CustomImageView(imagePath: ImageConstant.imgEdit2)))
              ])),
          SizedBox(height: 10.v),
          Text("lbl_archie_copeland".tr.toUpperCase(),
              style: theme.textTheme.bodyLarge),
          SizedBox(height: 13.v),
          Text("msg_allentown_new_mexico".tr,
              style: CustomTextStyles.bodyMediumGray600_1)
        ]));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 30.v,
        width: double.maxFinite,
        child: TabBar(
            controller: controller.tabviewController,
            isScrollable: true,
            labelColor: theme.colorScheme.primary,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.gray600,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400),
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(child: Text("lbl_profile_info".tr)),
              Tab(child: Text("lbl_my_orders".tr)),
              Tab(child: Text("lbl_security".tr)),
              Tab(child: Text("lbl_address_details".tr)),
              Tab(child: Text("lbl_log_out".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
