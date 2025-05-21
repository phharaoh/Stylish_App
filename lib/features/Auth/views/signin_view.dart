import 'package:flutter/material.dart';
import '../../Home/Widget/botnavbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Manager/login_cubit/login_cubit.dart';
import '../Manager/login_cubit/login_state.dart';
import 'package:stylish_app/core/styles/colors.dart';
import '../../../core/Utilz/Widgets/custom_form.dart';
import '../../../core/Utilz/Helper/my_navigator.dart';
import 'package:stylish_app/core/styles/text_styles.dart';
import '../../../../core/Utilz/Widgets/custom_elevatedButton.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26),
              child: SingleChildScrollView(
                child: Form(
                  key: LoginCubit.get(context).formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome\nBack!',
                        style: TextStyles.welcomeBack,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Customformfeild(
                        controller: LoginCubit.get(context).emailController,
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        prefixIcon: const Icon(
                          Icons.email_rounded,
                          color: AppColors.textFieldIcon,
                        ),
                        hintText: 'Email',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Customformfeild(
                        visiable: LoginCubit.get(context).passIsVisiable,
                        controller: LoginCubit.get(context).passwordController,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: AppColors.textFieldIcon,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () =>
                              LoginCubit.get(context).changePassVisibility(),
                          icon: Icon(
                            LoginCubit.get(context).passIsVisiable
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.textFieldIcon,
                          ),
                        ),
                        hintText: 'Password',
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      BlocConsumer<LoginCubit, LoginState>(
                        listener: (context, state) {
                          if (state is LoginSuccessState) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Login Successfully'),
                              ),
                            );
                            MyNavigator.goTo(
                                context: context, screen: const HomeRoute());
                          } else if (state is LoginErrorState) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(state.error),
                              ),
                            );
                          }
                        },
                        builder: (context, state) {
                          if (state is LoginLoadingState) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          } else {
                            return CustomElvButt(
                              onPressed: () {
                                LoginCubit.get(context).onLogin(context);
                              },
                              text: "Login",
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
