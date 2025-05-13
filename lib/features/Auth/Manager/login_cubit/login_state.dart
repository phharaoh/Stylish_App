abstract class LoginState {}

class LoginInitialState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {}

class LoginChangeVisibilityState extends LoginState {
  final bool isVisible;
  LoginChangeVisibilityState(this.isVisible);
}

class LoginErrorState extends LoginState {
  final String error;
  LoginErrorState(this.error);
}
