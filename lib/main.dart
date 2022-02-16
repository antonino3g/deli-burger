import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:vakinha_burger_mobile/app/modules/routes/splash_routers.dart';

void main() {
  runApp(const VakinhaBurgerMainApp());
}

class VakinhaBurgerMainApp extends StatelessWidget {
  const VakinhaBurgerMainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vakinha Burger',
      getPages: [
        ...SplashRouters.routers,
      ],
    );
  }
}
