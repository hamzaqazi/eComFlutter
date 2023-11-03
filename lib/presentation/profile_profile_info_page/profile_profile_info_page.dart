import 'controller/profile_profile_info_controller.dart';
import 'models/profile_profile_info_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:ecom/core/utils/validation_functions.dart';
import 'package:ecom/widgets/custom_elevated_button.dart';
import 'package:ecom/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileProfileInfoPage extends StatelessWidget {
  ProfileProfileInfoPage({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ProfileProfileInfoController controller =
      Get.put(ProfileProfileInfoController(ProfileProfileInfoModel().obs));

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
            decoration: AppDecoration.white,
            child: Column(
              children: [
                SizedBox(height: 38.v),
                _buildFiftyThree(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName() {
    return CustomTextFormField(
      controller: controller.firstNameController,
      hintText: "lbl_archie".tr,
    );
  }

  /// Section Widget
  Widget _buildLastName() {
    return CustomTextFormField(
      controller: controller.lastNameController,
      hintText: "lbl_copeland".tr,
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "msg_archiecopeland_gmail_com".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildSaveEdit() {
    return CustomElevatedButton(
      text: "lbl_save_edit".tr,
    );
  }

  /// Section Widget
  Widget _buildFiftyThree() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_first_name".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          _buildFirstName(),
          SizedBox(height: 26.v),
          Text(
            "lbl_last_name".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          _buildLastName(),
          SizedBox(height: 26.v),
          Text(
            "lbl_email_address".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          _buildEmail(),
          SizedBox(height: 31.v),
          _buildSaveEdit(),
        ],
      ),
    );
  }
}
