import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../routes/app_routes.dart';
import 'controller/welcome_controller.dart'; 
class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 455.v,
                  width: 338.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      _buildSettingsColumn(),
                      CustomImageView(
                        imagePath: ImageConstant.imgIllustration,
                        height: 243.v,
                        width: 213.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 45.h),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 234.h,
                          margin: EdgeInsets.only(top: 90.v),
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
                ),
              ),
              SizedBox(height: 35.v),
              Text(
                "lbl_welcome".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 20.v),
              Container(
                width: 278.h,
                margin: EdgeInsets.symmetric(horizontal: 48.h),
                child: Text(
                  "msg_it_s_a_pleasure".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargePoppinsOnPrimary.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 58.v),
              CustomElevatedButton(
                text: "lbl_get_started".tr.toUpperCase(),
                margin: EdgeInsets.only(
                  left: 23.h,
                  right: 17.h,
                ),
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
  Widget _buildSettingsColumn() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(right: 2.h),
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 100.v,
        ),
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder194,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 65.adaptSize,
          width: 65.adaptSize,
        ),
      ),
    );
  }

  /// Navigates to the walkthroughScreen when the action is triggered.
  onTapGetstarted() {
    Get.toNamed(
      AppRoutes.walkthroughScreen,
    );
  }
}
