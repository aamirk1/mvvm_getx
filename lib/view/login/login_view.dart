import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/view/login/widgets/input_email_widget.dart';
import 'package:mvvm_getx/view/login/widgets/input_password_widget.dart';
import 'package:mvvm_getx/view/login/widgets/login_button_widget.dart';
import 'package:mvvm_getx/view_models/controller/login/login_view_model.dart';

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
                  InputEmailWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  InputPasswordWidget(),
                ]),
              ),
              const SizedBox(height: 40),
              LoginButtonWidget(formKey: _formKey)
            ],
          ),
        ));
  }
}
