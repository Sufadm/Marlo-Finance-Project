class UserMode {
  final String email;
  final String password;
  final String returnSecureToken;

  UserMode(
      {required this.email,
      required this.password,
      required this.returnSecureToken});

  factory UserMode.fromMap(Map<String, dynamic> map) {
    return UserMode(
      email: map['email'],
      password: map['password'],
      returnSecureToken: map['returnSecureToken'],
    );
  }
}
