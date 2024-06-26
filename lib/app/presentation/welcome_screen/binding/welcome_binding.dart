import '../../../core/app_export.dart';
import '../controller/welcome_controller.dart';

/// A binding class for the WelcomeScreen.
///
/// This class ensures that the WelcomeController is created when the
/// WelcomeScreen is first loaded.
class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}
