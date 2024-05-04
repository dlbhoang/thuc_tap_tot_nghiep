import '../../../core/app_export.dart';
import '../models/walkthrough2_model.dart';

/// A controller class for the Walkthrough2Screen.
///
/// This class manages the state of the Walkthrough2Screen, including the
/// current walkthrough2ModelObj
class Walkthrough2Controller extends GetxController {
  Rx<Walkthrough2Model> walkthrough2ModelObj = Walkthrough2Model().obs;
}
