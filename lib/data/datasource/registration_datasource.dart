import 'package:xd_core/response/result.dart';

abstract class RegistrationDatasource{

  Future<Result> register(String username, String password);
  
}