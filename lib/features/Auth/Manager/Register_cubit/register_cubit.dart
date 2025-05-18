import 'register_state.dart';
import 'package:flutter/material.dart';
import '../../data/Reop/user_repo.dart';
import '../../data/Model/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool passIsVisiable = false;
  bool confPassVisiable = false;
  UserRepo userRepo = UserRepo();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  void changePassVisibility() {
    passIsVisiable = !passIsVisiable;
    emit(RegisterChangeVisibilityState(passIsVisiable));
  }

  void changConfPassVisi() {
    confPassVisiable = !confPassVisiable;
    emit(RegisterChangeVisibilityState(confPassVisiable));
  }

  onRegister(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      emit(RegisterLoadingState());
      await Future.delayed(const Duration(seconds: 2));
      emit(RegisterSuccessState());
      var response = await userRepo.register(UserModel(
          name: nameController.text,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text,
          phone: phoneController.text.isNotEmpty
              ? int.parse(phoneController.text)
              : null,
          email: emailController.text));

      response.fold(
        (String error) {
          emit(RegisterErrorState(error));
        },
        (r) {
          emit(RegisterSuccessState());
        },
      );
    }
  }
}
