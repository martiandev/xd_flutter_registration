import 'package:xd_core/response/result.dart';
import 'package:xd_registration_pkg/data/reposiory/registration_repository.dart';

class RegistrationUsecase {
  
  final RegistrationRepository repository;

  RegistrationUsecase(this.repository);


  Future<Result> register(String email, String password) async {
    return repository.register(email, password);
  }
  
}