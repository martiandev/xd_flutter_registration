import 'package:firebase_auth/firebase_auth.dart';
import 'package:xd_registration_pkg/domain/model/account.dart';

class FirebaseAccount {

  final String uid;
  final String? displayName;
  final String? username;
  final bool isEmailVerified;

  FirebaseAccount({required this.uid, this.displayName, this.username, required this.isEmailVerified});

  
  factory FirebaseAccount.fromUserCredential(UserCredential userCredential){
    return FirebaseAccount(
      uid: userCredential.user!.uid, 
      isEmailVerified:  userCredential.user!.emailVerified,
      username: userCredential.additionalUserInfo?.username,
      displayName: userCredential.user?.displayName,
    );
  }

  factory FirebaseAccount.fromAccount(Account account){
    return FirebaseAccount(
      uid:account.uid,
      isEmailVerified: account.isEmailVerified,
      username: account.username,
      displayName: account.displayName,
    );
  }

  Map<String,dynamic> map(){
    return {
      Account.tagUid : uid,
      Account.tagDisplayName : displayName,
      Account.tagUsername : username,
      Account.tagIsEmailVerified : isEmailVerified,
    };
  }


}