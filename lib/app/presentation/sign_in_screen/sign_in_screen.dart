import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';

import '../../widget/app_bar/appbar_leading_image.dart';
import '../../widget/app_bar/appbar_title.dart';
import '../../widget/app_bar/custom_app_bar.dart';
import '../../widget/custom_button_style.dart';
import '../../widget/custom_text_form_field.dart';
import 'controller/sign_in_controller.dart'; // ignore_for_file: must_be_immutable

class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppBar(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 1.v,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 287.h,
                            margin: EdgeInsets.only(right: 46.h),
                            child: Text(
                              "msg_welcome_to_tamang".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineLarge!.copyWith(
                                height: 1.27,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 246.h,
                            margin: EdgeInsets.only(right: 87.h),
                            child: Text(
                              "msg_enter_your_phone".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 14.v),
                        _buildColumnemailaddr(),
                        SizedBox(height: 18.v),
                        _buildColumnemailaddr1(),
                        SizedBox(height: 17.v),
                        Opacity(
                          opacity: 0.64,
                          child: Text(
                            "msg_forget_password".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 19.v),
                        _buildSignIn(),
                        SizedBox(height: 16.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 51.h),
                            child: Row(
                              children: [
                                Opacity(
                                  opacity: 0.64,
                                  child: Text(
                                    "msg_don_t_have_account".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Text(
                                    "msg_create_new_account".tr,
                                    style: CustomTextStyles.bodySmallPrimary,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Opacity(
                          opacity: 0.64,
                          child: Text(
                            "lbl_or".tr,
                            style: CustomTextStyles.bodyLargeSecondaryContainer,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildConnectWithFacebook(),
                        SizedBox(height: 16.v),
                        _buildConnectWithGoogle(),
                        SizedBox(height: 5.v)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar() {
    return Column(
      children: [
        CustomAppBar(
          leadingWidth: 44.h,
          leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 10.v,
              bottom: 10.v,
            ),
            onTap: () {
              onTapArrowleftone();
            },
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl_sign_in".tr,
          ),
          styleType: Style.bgFill,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "msg_sajin_tamang_figma".tr,
      suffix: Container(
        margin: EdgeInsets.only(
          left: 30.h,
          bottom: 10.v,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgCheckmark,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 34.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnemailaddr() {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "lbl_email_address".tr.toUpperCase(),
            style: CustomTextStyles.bodySmallBluegray400,
          ),
          SizedBox(height: 10.v),
          _buildEmail()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
      controller: controller.passwordController,
      hintText: "lbl".tr,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || (!isValidPassword(value, isRequired: true))) {
          return "err_msg_please_enter_valid_password".tr;
        }
        return null;
      },
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildColumnemailaddr1() {
    return Container(
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_password".tr.toUpperCase(),
                  style: CustomTextStyles.bodySmallBluegray400,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 24.adaptSize,
                width: 24.adaptSize,
              )
            ],
          ),
          SizedBox(height: 6.v),
          _buildPassword()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignIn() {
    return CustomElevatedButton(
      text: "lbl_sign_in2".tr.toUpperCase(),
    );
  }

  /// Section Widget
  Widget _buildConnectWithFacebook() {
    return CustomElevatedButton(
      height: 44.v,
      text: "msg_connect_with_facebook".tr.toUpperCase(),
      buttonStyle: CustomButtonStyles.outlineOnSecondaryContainer,
      buttonTextStyle: theme.textTheme.labelLarge!,
      onPressed: () {
        onTapConnectWithFacebook();
      },
    );
  }

  /// Section Widget
  Widget _buildConnectWithGoogle() {
    return CustomElevatedButton(
      height: 44.v,
      text: "msg_connect_with_google".tr.toUpperCase(),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFloatingicon,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlueA,
      buttonTextStyle: theme.textTheme.labelLarge!,
      onPressed: () {
        onTapConnectWithGoogle();
      },
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  onTapConnectWithFacebook() async {
   
  }

  onTapConnectWithGoogle() async {
   
  }
}
