import 'package:delicias_burger_mobile/app/core/mixins/loader_mixin.dart';
import 'package:delicias_burger_mobile/app/core/mixins/messages_mixin.dart';
import 'package:delicias_burger_mobile/app/repositories/auth/auth_repository.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController
    with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;

  final _loading = false.obs;
  final _message = Rxn<MessageModel>();

  RegisterController({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  void onInit() {
    loaderListener(_loading);
    messageListener(_message);
    super.onInit();
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    _loading.toggle();

    final UserModel = await _authRepository.register(name, email, password);

    _message(MessageModel(
      title: 'Sucesso',
      message: 'Cadastro realizado com sucesso.',
      type: MessageType.info,
    ));
  }
}
