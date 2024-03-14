import 'package:os/bindings/intialbindings.dart'; 
import 'package:os/core/localization/translation.dart'; 
import 'package:os/core/services/services.dart'; 
import 'package:os/routes.dart'; 
import 'package:flutter/material.dart'; 
import 'package:get/get.dart';
import 'core/localization/changelocal.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // GetX: Managing app localization
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),    // Setting up translations
      debugShowCheckedModeBanner: false,// Hiding debug banner
      title: 'Flutter Demo',
      locale: controller.language,      // Setting app locale based on language selection
      theme: controller.appTheme,      // Setting app theme based on theme selection
      initialBinding: InitialBindings(),    // Setting initial bindings  
      getPages: routes,    // Defining app routes
    );
  }
}
