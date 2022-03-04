import 'package:delicias_burger_mobile/app/repositories/auth/auth_repository.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final AuthRepository _authRepository;

  RegisterController({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;
}
