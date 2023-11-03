import '../profile_my_orders_page/widgets/profilemyorders_item_widget.dart';
import 'controller/profile_my_orders_controller.dart';
import 'models/profile_my_orders_model.dart';
import 'models/profilemyorders_item_model.dart';
import 'package:ecom/core/app_export.dart';
import 'package:flutter/material.dart';

class ProfileMyOrdersPage extends StatelessWidget {
  ProfileMyOrdersPage({Key? key})
      : super(
          key: key,
        );

  ProfileMyOrdersController controller =
      Get.put(ProfileMyOrdersController(ProfileMyOrdersModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 38.v),
              _buildProfileMyOrders(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileMyOrders() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_orders".tr,
            style: CustomTextStyles.titleSmallOnPrimarySemiBold_1,
          ),
          SizedBox(height: 20.v),
          Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0.v),
                  child: SizedBox(
                    width: 358.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.gray300,
                    ),
                  ),
                );
              },
              itemCount: controller.profileMyOrdersModelObj.value
                  .profilemyordersItemList.value.length,
              itemBuilder: (context, index) {
                ProfilemyordersItemModel model = controller
                    .profileMyOrdersModelObj
                    .value
                    .profilemyordersItemList
                    .value[index];
                return ProfilemyordersItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
