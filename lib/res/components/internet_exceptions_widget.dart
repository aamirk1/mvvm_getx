import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:mvvm_getx/res/colors/app_color.dart';

class InternetExceptionsWidget extends StatefulWidget {
  InternetExceptionsWidget({super.key, required this.onPress});
  VoidCallback onPress;

  @override
  State<InternetExceptionsWidget> createState() =>
      _InternetExceptionsWidgetState();
}

class _InternetExceptionsWidgetState extends State<InternetExceptionsWidget> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          const Icon(
            Icons.cloud_off,
            size: 50,
            color: AppColor.redColor,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Text("internet_exception".tr),
            ),
          ),
          SizedBox(
            height: height * 0.15,
          ),
          InkWell(
            onTap: widget.onPress,
            child: Container(
              height: 44,
              width: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColor.primaryColor,
              ),
              child: Text(
                "retry".tr,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
