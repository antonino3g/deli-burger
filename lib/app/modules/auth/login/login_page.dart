import 'package:delicias_burger_mobile/app/core/ui/deli_ui.dart';
import 'package:delicias_burger_mobile/app/core/ui/widgets/deli_appbar.dart';
import 'package:delicias_burger_mobile/app/core/ui/widgets/deli_button.dart';
import 'package:delicias_burger_mobile/app/core/ui/widgets/deli_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliAppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (_, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: IntrinsicHeight(
              child: Form(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: context.textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: context.theme.primaryColorDark),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const DeliciasTextformfield(label: 'E-mail'),
                      const SizedBox(
                        height: 30,
                      ),
                      const DeliciasTextformfield(label: 'Senha'),
                      const SizedBox(
                        height: 60,
                      ),
                      Center(
                        child: DeliButton(
                            width: context.width,
                            label: 'ENTRAR',
                            onPressed: () {}),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Não possui uma conta?'),
                          TextButton(
                              onPressed: () {
                                Get.toNamed('/auth/register');
                              },
                              child: const Text(
                                'Cadastre-se',
                                style: DeliciasUI.textBold,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
