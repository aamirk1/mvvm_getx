import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_getx/data/repository/login_repository/login_repository.dart';
import 'package:mvvm_getx/models/login/user_model.dart';
import 'package:mvvm_getx/res/routes/routes_name.dart';
import 'package:mvvm_getx/utils/utils.dart';
import 'package:mvvm_getx/view_models/controller/user_preference/user_preference_view_model.dart';

class LoginViewModel extends GetxController {
  final _api = LoginRepository();

  UserPreference userPreference = UserPreference();

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  RxBool isLoading = false.obs;
  void loginApi() {
    isLoading.value = true;
    Map data = {
      "email": emailController.value.text,
      "password": passwordController.value.text
    };
    _api.loginApi(data).then((value) {
      isLoading.value = false;
      if (value['error'] == 'user not found') {
        Utils.snackBar("Login", value['error']);
      } else {
        UserModel userModel = UserModel(token: value['token'], isLogin: true);

        userPreference.saveUser(userModel).then((value) {
          Get.delete<LoginViewModel>();

          Get.toNamed(RoutesName.homeView)!.then((value) {});
        }).onError((error, stackTrace) {});
        Utils.snackBar("Login", 'Login Success');
      }
    }).onError((error, stackTrace) {
      print(error.toString());
      isLoading.value = false;
      Utils.snackBar("Error", error.toString());
    });
  }
}
