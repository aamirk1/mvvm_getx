import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/getx_localization/languages.dart';
import 'package:mvvm_getx/res/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'MVVM GetX',
      translations: Languages(),
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
