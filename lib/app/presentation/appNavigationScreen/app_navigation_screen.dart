import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../routes/app_routes.dart';
import 'controller/app_navigation_controller.dart'; // ignore_for_file: must_be_immutable

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: AppDecoration.fillOnPrimaryContainer,
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "lbl_0_welcome".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_01_walkthrough".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.walkthroughScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_02_walkthrough".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.walkthrough1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_03_walkthrough".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.walkthrough2Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "lbl_05_sign_in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "lbl_app_navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "msg_check_your_app_s".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.blueGray40001,
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray40001,
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
