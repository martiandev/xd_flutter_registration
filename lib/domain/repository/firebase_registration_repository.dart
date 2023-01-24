import 'package:xd_core/response/result.dart';
import 'package:xd_registration_pkg/data/firebase/datasource/firebase_registration_datasource.dart';
import 'package:xd_registration_pkg/data/reposiory/registration_repository.dart';

class FirebaseRegistrationRepository extends RegistrationRepository{

  FirebaseRegistrationRepository() : super(FirebaseRegistrationDatasource());

  @override
  Future<Result> register(String username, String password) async {
    return datasource.register(username, password);
  }

}