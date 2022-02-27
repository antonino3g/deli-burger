import 'package:delicias_burger_mobile/app/core/ui/widgets/deli_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF000000),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.width,
                // child: Image.asset('assets/images/deli_lanche.png',
                //     fit: BoxFit.cover),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: context.heightTransformer(reducedBy: 85),
                  ),
                  Image.asset('assets/images/deli_logo.png'),
                  const SizedBox(
                    height: 60,
                  ),
                  DeliButton(
                    label: 'ACESSAR',
                    width: context.widthTransformer(reducedBy: 40),
                    height: 45,
                    onPressed: () {
                      Get.toNamed('/auth/login');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
