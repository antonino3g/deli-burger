import 'package:delicias_burger_mobile/app/core/bindings/application_binding.dart';
import 'package:delicias_burger_mobile/app/core/ui/deli_ui.dart';
import 'package:delicias_burger_mobile/app/modules/routes/auth_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:delicias_burger_mobile/app/modules/routes/splash_routers.dart';

void main() {
  runApp(const DeliciasBurgerMainApp());
}

class DeliciasBurgerMainApp extends StatelessWidget {
  const DeliciasBurgerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Delicia's Burger",
      theme: DeliciasUI.theme,
      initialBinding: ApplicationBinding(),
      getPages: [
        ...SplashRouters.routers,
        ...AuthRouters.routers,
      ],
    );
  }
}
