import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/sign_in_model.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
