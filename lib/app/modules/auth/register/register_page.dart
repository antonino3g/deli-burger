import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/ui/widgets/deli_appbar.dart';
import '../../../core/ui/widgets/deli_button.dart';
import '../../../core/ui/widgets/deli_textformfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliAppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cadastro',
                    style: context.textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.theme.primaryColorDark),
                  ),
                  Text(
                    'Preencha os campos abaixo para criar o seu cadastro.',
                    style: context.textTheme.bodyText1,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const DeliciasTextformfield(label: 'Nome'),
                  const SizedBox(
                    height: 30,
                  ),
                  const DeliciasTextformfield(label: 'E-mail'),
                  const SizedBox(
                    height: 30,
                  ),
                  const DeliciasTextformfield(label: 'Senha'),
                  const SizedBox(
                    height: 30,
                  ),
                  const DeliciasTextformfield(label: 'Confirme a senha'),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: DeliButton(
                        width: context.width,
                        label: 'Cadastrar',
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
