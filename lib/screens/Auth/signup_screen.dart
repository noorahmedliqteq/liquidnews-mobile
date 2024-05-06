import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:liquidnews/utils/constants/colors.dart';
import 'package:liquidnews/utils/constants/sizes.dart';
import 'package:liquidnews/utils/constants/text_strings.dart';
import 'package:liquidnews/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: dark ? AppColors.light : AppColors.dark,
          ),
          onPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50.0),
            Text(
              AppTexts.signupTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            Text(
              AppTexts.fullName,
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.supervised_user_circle_outlined)),
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
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.back(),
                    child: Text(AppTexts.tContinue))),
          ],
        ),
      ),
    );
  }
}
