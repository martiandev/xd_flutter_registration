import 'package:xd_core/response/result.dart';
import 'package:xd_registration_pkg/data/datasource/registration_datasource.dart';

abstract class RegistrationRepository {
  final RegistrationDatasource datasource;
  RegistrationRepository(this.datasource);

  Future<Result> register(String username, String password);
  
}