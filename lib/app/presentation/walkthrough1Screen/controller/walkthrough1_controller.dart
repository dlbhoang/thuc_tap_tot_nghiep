import '../../../core/app_export.dart';
import '../models/walkthrough1_model.dart';

/// A controller class for the Walkthrough1Screen.
///
/// This class manages the state of the Walkthrough1Screen, including the
/// current walkthrough1ModelObj
class Walkthrough1Controller extends GetxController {
  Rx<Walkthrough1Model> walkthrough1ModelObj = Walkthrough1Model().obs;
}
