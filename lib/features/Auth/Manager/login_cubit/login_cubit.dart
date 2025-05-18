import 'login_state.dart';
import 'package:flutter/material.dart';
import '../../data/Reop/user_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  UserRepo userRepo = UserRepo();
  bool passIsVisiable = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void changePassVisibility() {
    passIsVisiable = !passIsVisiable;
    emit(LoginChangeVisibilityState(passIsVisiable));
  }

  onLogin(BuildContext context) async {
    emit(LoginLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    if (formKey.currentState!.validate()) {
      var response = await userRepo.login(
          name: emailController.text, password: passwordController.text);
      response.fold(
        (String error) {
          emit(LoginErrorState(error));
        },
        (r) {
          emit(LoginSuccessState());
        },
      );
    } else {
      emit(LoginErrorState("Please enter valid data"));
    }
  }
}
