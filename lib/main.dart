import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app/core/app_export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        translations: AppLocalization(),
        locale: Get.deviceLocale,
        fallbackLocale: const Locale('en', 'US'),
        title: 'food app',
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,
      );
    });
  }
}
