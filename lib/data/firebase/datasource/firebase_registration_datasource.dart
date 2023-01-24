
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xd_core/response/fail.dart';
import 'package:xd_core/response/result.dart';
import 'package:xd_core/response/success.dart';
import 'package:xd_registration_pkg/data/firebase/entity/firebase_account.dart';
import 'package:xd_registration_pkg/data/datasource/registration_datasource.dart';
import 'package:xd_registration_pkg/domain/model/account.dart';

class FirebaseRegistrationDatasource extends RegistrationDatasource{
  
  @override
  Future<Result> register(String username, String password) async {
      try {
      var userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: username, password: password);
      var fbAccount = FirebaseAccount.fromUserCredential(userCredential);
      var map = fbAccount.map();
      return Success(data:Account.fromMap(map));
    } on FirebaseException catch (e) {
      return Failure(errorData: e);
    } catch (e) {
      return Failure(errorData: e);
    }
  }

}