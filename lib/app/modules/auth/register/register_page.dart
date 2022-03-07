import 'dart:developer';

import 'package:delicias_burger_mobile/app/core/ui/deli_state.dart';
import 'package:delicias_burger_mobile/app/modules/auth/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import '../../../core/ui/widgets/deli_appbar.dart';
import '../../../core/ui/widgets/deli_button.dart';
import '../../../core/ui/widgets/deli_textformfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends DeliState<RegisterPage, RegisterController> {
  final _formKey = GlobalKey<FormState>();
  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

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
                  DeliciasTextformfield(
                    label: 'Nome',
                    controller: _nameEC,
                    validator: Validatorless.required('Nome obrigatório'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DeliciasTextformfield(
                    label: 'E-mail',
                    controller: _emailEC,
                    validator: Validatorless.multiple(
                      [
                        Validatorless.required('E-mail obrigatório'),
                        Validatorless.email('E-mail inválido'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DeliciasTextformfield(
                    label: 'Senha',
                    controller: _passwordEC,
                    validator: Validatorless.multiple(
                      [
                        Validatorless.required('Senha obrigatória'),
                        Validatorless.min(
                            6, 'Senha deve conter ao menos 6 caracteres'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DeliciasTextformfield(
                    label: 'Confirme a senha',
                    validator: Validatorless.multiple(
                      [
                        Validatorless.required('Confirme a senha'),
                        Validatorless.compare(_passwordEC, 'Senhas diferentes'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: DeliButton(
                      width: double.infinity,
                      label: 'Cadastrar',
                      onPressed: () {
                        final formValid =
                            _formKey.currentState?.validate() ?? false;
                        if (formValid) {}
                        log('pressed');
                      },
                    ),
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
