import 'package:flutter/material.dart';
import 'package:mvvm_getx/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Utils.toastMessage("Splash Screen");
        Utils.toastMessageCenter("Splash Screen center");
      }),
    );
  }
}
