library xd_registration_pkg;

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xd_core/response/fail.dart';
import 'package:xd_core/response/success.dart';
import 'package:xd_registration_pkg/domain/repository/firebase_registration_repository.dart';
import 'package:xd_registration_pkg/domain/usecase/registration_usecase.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial()) {

    on<RegisterFirebaseEvent>((event, emit) async => _onRegisterFirebase(event,emit));
  
  }


  _onRegisterFirebase(RegisterFirebaseEvent event, Emitter<RegisterState> emit) async {
    var repository = FirebaseRegistrationRepository();
    var usecase = RegistrationUsecase(repository);
    var result = await usecase.register(event.username, event.password);
  
    // if(result is Success){
    //   emit(ResgisterSuccess(result));
    // } else if (result is Failure) {
    //   emit(ResgisterFailed(result));
    // }
  

  }

}



