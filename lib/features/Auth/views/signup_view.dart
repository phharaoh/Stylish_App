import 'package:flutter/material.dart';
import '../../Home/Widget/botnavbar.dart';
import '../../../../core/styles/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/styles/text_styles.dart';
import '../../../core/Utilz/Helper/my_navigator.dart';
import '../Manager/Register_cubit/register_cubit.dart';
import '../Manager/Register_cubit/register_state.dart';
import '../../../core/Utilz/Widgets/customFormFeild.dart';
import '../../../../core/Utilz/Widgets/custom_elevatedButton.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocBuilder<RegisterCubit, RegisterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26),
              child: SingleChildScrollView(
                child: Form(
                  key: RegisterCubit.get(context).formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Create an\naccount',
                        style: TextStyles.welcomeBack,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Customformfeild(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                        controller: RegisterCubit.get(context).nameController,
                        prefixIcon: const Icon(
                          Icons.person,
                          color: AppColors.textFieldIcon,
                        ),
                        hintText: 'Full Name',
                      ),
                      Customformfeild(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          return null;
                        },
                        controller: RegisterCubit.get(context).phoneController,
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: AppColors.textFieldIcon,
                        ),
                        hintText: 'Phone',
                      ),
                      Customformfeild(
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        controller: RegisterCubit.get(context).emailController,
                        prefixIcon: const Icon(
                          Icons.email_rounded,
                          color: AppColors.textFieldIcon,
                        ),
                        hintText: 'Email',
                      ),
                      Customformfeild(
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        controller:
                            RegisterCubit.get(context).passwordController,
                        visiable: RegisterCubit.get(context).passIsVisiable,
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.textFieldIcon,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () =>
                              RegisterCubit.get(context).changePassVisibility(),
                          icon: Icon(RegisterCubit.get(context).passIsVisiable
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        hintText: 'Password',
                      ),
                      Customformfeild(
                        validator: (value) {
                          if (value!.isEmpty ||
                              value.length < 6 ||
                              value !=
                                  RegisterCubit.get(context)
                                      .passwordController
                                      .text) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        controller: RegisterCubit.get(context)
                            .confirmPasswordController,
                        visiable: RegisterCubit.get(context).confPassVisiable,
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.textFieldIcon,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () =>
                              RegisterCubit.get(context).changConfPassVisi(),
                          icon: Icon(RegisterCubit.get(context).confPassVisiable
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        hintText: 'Confirm Password',
                      ),
                      const Text(
                        'By clicking the Register button, you agree\nto the public offer',
                        style: TextStyles.descriptionAuth,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocConsumer<RegisterCubit, RegisterState>(
                        listener: (context, state) {
                          if (state is RegisterSuccessState) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Register Successfully'),
                              ),
                            );
                            MyNavigator.goTo(
                                context: context, screen: const HomeRoute());
                          }
                          if (state is RegisterErrorState) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(state.error),
                              ),
                            );
                          }
                        },
                        builder: (context, state) {
                          if (state is RegisterLoadingState) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return CustomElvButt(
                              onPressed: () {
                                RegisterCubit.get(context).onRegister(context);
                              },
                              text: "Create Account",
                            );
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
