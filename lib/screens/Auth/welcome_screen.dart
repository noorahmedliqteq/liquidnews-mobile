import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:liquidnews/screens/Auth/login_screen.dart';
import 'package:liquidnews/utils/constants/colors.dart';
import 'package:liquidnews/utils/constants/image_strings.dart';
import 'package:liquidnews/utils/constants/sizes.dart';
import 'package:liquidnews/utils/constants/text_strings.dart';
import 'package:liquidnews/utils/device/device_utility.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // Ensure the container fills the entire screen
          width: AppDeviceUtils.getScreenWidth(context),
          height: AppDeviceUtils.getScreenHeight(),
          child: Stack(
            children: [
              Image(
                width: AppDeviceUtils.getScreenWidth(context),
                height: AppDeviceUtils.getScreenHeight(),
                image: AssetImage(AppImages.welcome_bg_image),
                fit: BoxFit
                    .cover, // Fill the entire container without distortion
              ),
              Container(
                width: AppDeviceUtils.getScreenWidth(context),
                height: AppDeviceUtils.getScreenHeight(),
                color: Colors.black.withOpacity(0.5),
              ),
              Positioned(
                width: 250.0,
                child: Text(
                  AppTexts.welcome_title,
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .apply(color: AppColors.white),
                ),
                top: AppSizes.appBarHeight * 2,
                left: AppSizes.defaultSpace,
              ),
              Positioned(
                bottom: AppSizes.appBarHeight,
                left: AppSizes.defaultSpace,
                right: AppSizes.defaultSpace,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: AppColors.white),
                            foregroundColor: AppColors.white,
                            backgroundColor: AppColors.transparent),
                        onPressed: () {},
                        child: Text(AppTexts.createAccount),
                      ),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: AppColors.white,
                            backgroundColor: AppColors.primary),
                        onPressed: () => Get.to(LoginScreen()),
                        child: Text("Login"),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
