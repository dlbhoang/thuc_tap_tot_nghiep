import '../../../core/app_export.dart';
import '../controller/walkthrough2_controller.dart';

/// A binding class for the Walkthrough2Screen.
///
/// This class ensures that the Walkthrough2Controller is created when the
/// Walkthrough2Screen is first loaded.
class Walkthrough2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Walkthrough2Controller());
  }
}
