import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/res/components/round_button.dart';
import 'package:mvvm_getx/view_models/controller/login/login_view_model.dart';

class LoginButtonWidget extends StatelessWidget {
  final formKey;
  LoginButtonWidget({super.key, required this.formKey});
  final loginVM = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return Obx(() => RoundButton(
          title: 'login'.tr,
          loading: loginVM.isLoading.value,
          onPress: () {
            if (formKey.currentState!.validate()) {
              loginVM.loginApi();
            }
          },
          width: 200,
        ));
  }
}
