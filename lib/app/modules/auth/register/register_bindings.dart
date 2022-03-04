import 'package:delicias_burger_mobile/app/core/rest_client/rest_client.dart';
import 'package:delicias_burger_mobile/app/modules/auth/register/register_controller.dart';
import 'package:delicias_burger_mobile/app/repositories/auth/auth_repository.dart';
import 'package:delicias_burger_mobile/app/repositories/auth/auth_repository_impl.dart';
import 'package:get/get.dart';

class RegisterBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        restClient: Get.find(),
      ),
    );

    Get.lazyPut(
      () => RegisterController(
        authRepository: Get.find(),
      ),
    );
  }
}
