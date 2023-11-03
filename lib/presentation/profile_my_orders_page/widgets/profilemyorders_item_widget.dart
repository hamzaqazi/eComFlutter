import '../controller/profile_my_orders_controller.dart';
import '../models/profilemyorders_item_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilemyordersItemWidget extends StatelessWidget {
  ProfilemyordersItemWidget(
    this.profilemyordersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfilemyordersItemModel profilemyordersItemModelObj;

  var controller = Get.find<ProfileMyOrdersController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 1.h,
        vertical: 2.v,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: profilemyordersItemModelObj.image!.value,
              height: 110.v,
              width: 109.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    profilemyordersItemModelObj.price!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 12.v),
                Obx(
                  () => Text(
                    profilemyordersItemModelObj.shortsInYellow!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 38.v),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_qty2".tr,
                              style: CustomTextStyles.bodyMediumGray600,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Obx(
                        () => Text(
                          profilemyordersItemModelObj.one!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
