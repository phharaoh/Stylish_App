import 'register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitialState());
  static RegisterCubit get(context) => BlocProvider.of(context);
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool passIsVisiable = false;
  bool confPassVisiable = false;
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
}
