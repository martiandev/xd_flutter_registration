library xd_registration_pkg;

class Account {

  static const String tagUid = "uid";
  static const String tagDisplayName = "displayName";
  static const String tagUsername = "username";
  static const String tagIsEmailVerified = "isEmailVerified";

  final String uid;
  final String? displayName;
  final String? username;
  final bool isEmailVerified;

  Account({required this.uid, this.displayName, this.username, required this.isEmailVerified});

  factory Account.fromMap(Map<String,dynamic> map){
    return Account(
      uid: map[tagUid], 
      isEmailVerified: map[tagIsEmailVerified],
      username: map[tagUsername],
      displayName:map[tagDisplayName],
    );
  }

}