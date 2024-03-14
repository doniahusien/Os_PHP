import 'package:os/core/constant/color.dart';
import 'package:os/core/localization/changelocal.dart';
import 'package:os/core/localization/translation.dart';
import 'package:os/core/services/services.dart';
import 'package:os/routes.dart';
import 'package:os/test.dart';
import 'package:os/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,
      home: Language(),
      routes: routes,
    );
  }
}
