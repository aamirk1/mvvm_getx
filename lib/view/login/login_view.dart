import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/components/round_button.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view_models/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text("login".tr),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(children: [
                  TextFormField(
                    controller: loginVM.emailController.value,
                    focusNode: loginVM.emailFocusNode.value,
                    decoration: InputDecoration(
                        hintText: 'email_hint'.tr,
                        border: const OutlineInputBorder()),
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Email', 'Enter email');
                      }
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                          context,
                          loginVM.emailFocusNode.value,
                          loginVM.passwordFocusNode.value);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: loginVM.passwordController.value,
                    focusNode: loginVM.passwordFocusNode.value,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        hintText: 'password_hint'.tr,
                        border: const OutlineInputBorder()),
                    validator: (value) {
                      if (value!.isEmpty) {
                        Utils.snackBar('Password', 'Enter password');
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {},
                  ),
                ]),
              ),
              const SizedBox(height: 40),
              RoundButton(
                title: 'login'.tr,
                onPress: () {
                  if (_formKey.currentState!.validate()) {}
                },
                width: 200,
              ),
            ],
          ),
        ));
  }
}
