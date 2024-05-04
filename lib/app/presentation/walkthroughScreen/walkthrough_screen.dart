import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../routes/app_routes.dart';
import 'controller/walkthrough_controller.dart';

class WalkthroughScreen extends GetWidget<WalkthroughController> {
  const WalkthroughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 34.v),
          child: Column(
            children: [
              SizedBox(
                height: 423.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIllustrations,
                      height: 383.v,
                      width: 375.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 65.adaptSize,
                      width: 65.adaptSize,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        left: 39.h,
                        top: 9.v,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 234.h,
                        margin: EdgeInsets.only(right: 22.h),
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
              SizedBox(height: 30.v),
              CustomImageView(
                imagePath: ImageConstant.imgAllYourFavorites,
                height: 36.v,
                width: 234.h,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 246.h,
                child: Text(
                  "msg_order_from_the_best".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
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
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "lbl_get_started".tr.toUpperCase(),
                margin: EdgeInsets.only(
                  left: 18.h,
                  right: 22.h,
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

  /// Navigates to the walkthrough1Screen when the action is triggered.
  onTapGetstarted() {
    Get.toNamed(
      AppRoutes.walkthrough1Screen,
    );
  }
}
