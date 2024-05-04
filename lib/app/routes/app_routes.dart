


import '../core/app_export.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String walkthroughScreen = '/walkthrough_screen';

  static const String walkthrough1Screen = '/walkthrough1_screen';

  static const String walkthrough2Screen = '/walkthrough2_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeScreen,
      page: () => const WelcomeScreen(),
      bindings: [WelcomeBinding()],
    ),
    GetPage(
      name: walkthroughScreen,
      page: () => const WalkthroughScreen(),
      bindings: [WalkthroughBinding()],
    ),
    GetPage(
      name: walkthrough1Screen,
      page: () => const Walkthrough1Screen(),
      bindings: [Walkthrough1Binding()],
    ),
    GetPage(
      name: walkthrough2Screen,
      page: () => const Walkthrough2Screen(),
      bindings: [Walkthrough2Binding()],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [SignInBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => const WelcomeScreen(),
      bindings: [WelcomeBinding()],
    )
  ];
}
