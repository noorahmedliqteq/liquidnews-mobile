import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:liquidnews/screens/Auth/forgetpassword_screen.dart';
import 'package:liquidnews/screens/Auth/signup_screen.dart';
import 'package:liquidnews/utils/constants/colors.dart';
import 'package:liquidnews/utils/constants/sizes.dart';
import 'package:liquidnews/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50.0),
            Text(
              AppTexts.loginTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              AppTexts.email,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.email)),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              AppTexts.password,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.remove_red_eye_rounded),
                    onPressed: () {},
                  )),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () => Get.to(ForgetPassScreen()),
                    child: Text(
                      AppTexts.forgetPassword,
                    ))
              ],
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: Text(AppTexts.signIn))),
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: AppColors.white),
                    foregroundColor: AppColors.white,
                    backgroundColor: AppColors.transparent),
                onPressed: () => Get.to(SignupScreen()),
                child: Text(AppTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
