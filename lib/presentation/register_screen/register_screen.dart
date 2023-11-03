import 'controller/register_controller.dart';
import 'package:ecom/core/app_export.dart';
import 'package:ecom/core/utils/validation_functions.dart';
import 'package:ecom/widgets/custom_elevated_button.dart';
import 'package:ecom/widgets/custom_icon_button.dart';
import 'package:ecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 16.h, top: 98.v, right: 16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("msg_hello_register".tr,
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 40.v),
                          _buildFirstName(),
                          SizedBox(height: 12.v),
                          _buildLastName(),
                          SizedBox(height: 12.v),
                          _buildEmail(),
                          SizedBox(height: 12.v),
                          _buildPassword(),
                          SizedBox(height: 24.v),
                          _buildRegisterButton(),
                          SizedBox(height: 38.v),
                          _buildOrLoginWithDivider(),
                          SizedBox(height: 21.v),
                          _buildSocialButtons(),
                          SizedBox(height: 43.v),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyhavean();
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_an2".tr,
                                            style: theme.textTheme.bodyMedium),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "lbl_login_now".tr,
                                            style: CustomTextStyles
                                                .titleSmallPrimary)
                                      ]),
                                      textAlign: TextAlign.left))),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildFirstName() {
    return CustomTextFormField(
        controller: controller.firstNameController,
        hintText: "lbl_first_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildLastName() {
    return CustomTextFormField(
        controller: controller.lastNameController,
        hintText: "lbl_last_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_email".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildRegisterButton() {
    return CustomElevatedButton(
        text: "lbl_register".tr,
        onPressed: () {
          onTapRegisterButton();
        });
  }

  /// Section Widget
  Widget _buildOrLoginWithDivider() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: SizedBox(width: 112.h, child: Divider())),
          Text("lbl_or_login_with".tr,
              style: CustomTextStyles.bodyMediumGray600_1),
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: SizedBox(width: 111.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildSocialButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(right: 11.h),
              child: CustomIconButton(
                  height: 56.v,
                  width: 168.h,
                  padding: EdgeInsets.all(15.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSocialFacebookIc)))),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: CustomIconButton(
                  height: 56.v,
                  width: 168.h,
                  padding: EdgeInsets.all(15.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSocialGoogleIc))))
    ]);
  }

  /// Navigates to the mainLandingScreen when the action is triggered.
  onTapRegisterButton() {
    Get.toNamed(
      AppRoutes.mainLandingScreen,
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.loginScreen,
    );
  }
}
