import 'package:get/get.dart';
import 'package:mvvm_getx/res/routes/routes_name.dart';
import 'package:mvvm_getx/view/login/login_view.dart';
import 'package:mvvm_getx/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutesName.splashScreen,
            page: () => const SplashScreen(),
            transitionDuration: const Duration(milliseconds: 250),
            transition: Transition.leftToRight),

        GetPage(
        name: RoutesName.loginView,
        page: () => const LoginView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRight)
      ];
}
