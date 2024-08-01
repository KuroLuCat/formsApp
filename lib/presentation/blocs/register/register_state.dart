

part of 'register_cubit.dart';



enum FormStatus { invalid, valid, validating, posting }

class RegisterFormState extends Equatable {
  final FormStatus formStatus;
  final bool isValid;
  final UserName userName;
  final Email email;
  final Password password;

  const RegisterFormState(
      {this.formStatus = FormStatus.invalid,
      this.isValid = false, 
      this.userName = const UserName.pure(),
      this.email = const Email.pure(),
      this.password = const Password.pure()});

  RegisterFormState copyWith({
    FormStatus? formStatus,
    bool? isValid,
    UserName? userName,
    Email? email,
    Password? password,
  }) =>
      RegisterFormState(
          formStatus: formStatus ?? this.formStatus,
          isValid: isValid??this.isValid,
          userName: userName ?? this.userName,
          email: email ?? this.email,
          password: password ?? this.password);

  @override
  List<Object> get props => [formStatus,isValid, userName, email, password];
}
