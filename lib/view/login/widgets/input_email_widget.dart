import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view_models/controller/login/login_view_model.dart';

class InputEmailWidget extends StatelessWidget {
  InputEmailWidget({super.key});

  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.emailController.value,
      focusNode: loginVM.emailFocusNode.value,
      decoration: InputDecoration(
          hintText: 'email_hint'.tr, border: const OutlineInputBorder()),
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar('Email', 'Enter email');
        }
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(context, loginVM.emailFocusNode.value,
            loginVM.passwordFocusNode.value);
      },
    );
  }
}
