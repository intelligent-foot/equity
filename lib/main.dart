import 'package:equity/src/routing/routes.dart';
import 'package:equity/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      transitionDuration: const Duration(milliseconds: 500),
      getPages: AppPage.routes,
    
    ));
}



