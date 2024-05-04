import '../../../core/app_export.dart';
import '../controller/walkthrough1_controller.dart';

/// A binding class for the Walkthrough1Screen.
///
/// This class ensures that the Walkthrough1Controller is created when the
/// Walkthrough1Screen is first loaded.
class Walkthrough1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Walkthrough1Controller());
  }
}
