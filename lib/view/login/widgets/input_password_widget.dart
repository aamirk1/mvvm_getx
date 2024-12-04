import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view_models/controller/login/login_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
  InputPasswordWidget({super.key});

  final loginVM = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.passwordController.value,
      focusNode: loginVM.passwordFocusNode.value,
      obscureText: true,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          hintText: 'password_hint'.tr, border: const OutlineInputBorder()),
      validator: (value) {
        if (value!.isEmpty) {
          Utils.snackBar('Password', 'Enter password');
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
