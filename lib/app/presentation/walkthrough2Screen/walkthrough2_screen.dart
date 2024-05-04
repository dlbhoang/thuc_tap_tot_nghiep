import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../routes/app_routes.dart';
import 'controller/walkthrough2_controller.dart'; // ignore_for_file: must_be_immutable

class Walkthrough2Screen extends GetWidget<Walkthrough2Controller> {
  const Walkthrough2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              _buildSettingsRow(),
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: ImageConstant.imgIllustrationsOrange50362x307,
                height: 362.v,
                width: 307.h,
              ),
              SizedBox(height: 35.v),
              CustomImageView(
                imagePath: ImageConstant.imgChooseYourFood,
                height: 36.v,
                width: 247.h,
              ),
              SizedBox(height: 6.v),
              Container(
                width: 306.h,
                margin: EdgeInsets.only(
                  left: 19.h,
                  right: 8.h,
                ),
                child: Text(
                  "msg_easily_find_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                height: 5.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 8,
                    activeDotColor: appTheme.green600,
                    dotColor: appTheme.blueGray400.withOpacity(0.42),
                    dotHeight: 5.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              CustomElevatedButton(
                text: "lbl_get_started".tr.toUpperCase(),
                onPressed: () {
                  onTapGetstarted();
                },
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 65.adaptSize,
            width: 65.adaptSize,
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 14.v,
            ),
          ),
          Expanded(
            child: Container(
              width: 234.h,
              margin: EdgeInsets.only(left: 14.h),
              child: Text(
                "msg_tamang_foodservice".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.displaySmall!.copyWith(
                  height: 1.08,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapGetstarted() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
