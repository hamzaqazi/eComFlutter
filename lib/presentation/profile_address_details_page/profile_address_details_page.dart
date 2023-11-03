import 'controller/profile_address_details_controller.dart';
import 'models/profile_address_details_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:ecom/core/utils/validation_functions.dart';
import 'package:ecom/widgets/custom_outlined_button.dart';
import 'package:ecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileAddressDetailsPage extends StatelessWidget {
  ProfileAddressDetailsPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ProfileAddressDetailsController controller = Get.put(
      ProfileAddressDetailsController(ProfileAddressDetailsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 38.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_address_1".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildAddress(),
                      SizedBox(height: 26.v),
                      Text(
                        "lbl_address_2".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildAddress1(),
                      SizedBox(height: 27.v),
                      Text(
                        "lbl_city".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 3.v),
                      _buildCity(),
                      SizedBox(height: 26.v),
                      Text(
                        "lbl_postal_code".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildPostalCode(),
                      SizedBox(height: 26.v),
                      Text(
                        "lbl_phone_number".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 4.v),
                      _buildPhoneNumber(),
                      SizedBox(height: 24.v),
                      _buildAddAnotherAddress(),
                      SizedBox(height: 26.v),
                      Text(
                        "msg_current_addresses".tr,
                        style: CustomTextStyles.titleSmallOnPrimarySemiBold_1,
                      ),
                      SizedBox(height: 20.v),
                      _buildCurrentAddress(
                        homeAddress: "lbl_home_address".tr,
                        edit: "lbl_edit".tr,
                        addressCounter: "lbl_address_1".tr,
                        amoySt: "lbl_amoy_st_592".tr,
                        addressCounter1: "lbl_address_2".tr,
                        amoySt1: "lbl_amoy_st_592".tr,
                        city: "lbl_city".tr,
                        losAngeles: "lbl_los_angeles".tr,
                        postalCode: "lbl_postal_code2".tr,
                        zero: "lbl_0000000".tr,
                      ),
                      SizedBox(height: 24.v),
                      _buildCurrentAddress(
                        homeAddress: "lbl_home_address".tr,
                        edit: "lbl_edit".tr,
                        addressCounter: "lbl_address_1".tr,
                        amoySt: "lbl_amoy_st_592".tr,
                        addressCounter1: "lbl_address_2".tr,
                        amoySt1: "lbl_amoy_st_592".tr,
                        city: "lbl_city".tr,
                        losAngeles: "lbl_los_angeles".tr,
                        postalCode: "lbl_postal_code2".tr,
                        zero: "lbl_0000000".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress() {
    return CustomTextFormField(
      controller: controller.addressController,
      hintText: "lbl_enter_address".tr,
    );
  }

  /// Section Widget
  Widget _buildAddress1() {
    return CustomTextFormField(
      controller: controller.addressController1,
      hintText: "lbl_enter_address".tr,
    );
  }

  /// Section Widget
  Widget _buildCity() {
    return CustomTextFormField(
      controller: controller.cityController,
      hintText: "lbl_enter_your_city".tr,
    );
  }

  /// Section Widget
  Widget _buildPostalCode() {
    return CustomTextFormField(
      controller: controller.postalCodeController,
      hintText: "msg_enter_postal_code".tr,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber() {
    return CustomTextFormField(
      controller: controller.phoneNumberController,
      hintText: "msg_enter_phone_number".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildAddAnotherAddress() {
    return CustomOutlinedButton(
      text: "msg_add_another_address".tr,
    );
  }

  /// Common widget
  Widget _buildCurrentAddress({
    required String homeAddress,
    required String edit,
    required String addressCounter,
    required String amoySt,
    required String addressCounter1,
    required String amoySt1,
    required String city,
    required String losAngeles,
    required String postalCode,
    required String zero,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                homeAddress,
                style: CustomTextStyles.titleSmallOnPrimary.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgEdit,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  edit,
                  style: CustomTextStyles.titleSmallPrimary_1.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 27.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  addressCounter,
                  style: CustomTextStyles.bodyMediumGray600_1.copyWith(
                    color: appTheme.gray600,
                  ),
                ),
              ),
              Text(
                amoySt,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  addressCounter1,
                  style: CustomTextStyles.bodyMediumGray600_1.copyWith(
                    color: appTheme.gray600,
                  ),
                ),
              ),
              Text(
                amoySt1,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                city,
                style: CustomTextStyles.bodyMediumGray600_1.copyWith(
                  color: appTheme.gray600,
                ),
              ),
              Text(
                losAngeles,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                postalCode,
                style: CustomTextStyles.bodyMediumGray600_1.copyWith(
                  color: appTheme.gray600,
                ),
              ),
              Text(
                zero,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
