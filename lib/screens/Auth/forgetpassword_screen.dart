import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:liquidnews/utils/constants/colors.dart';
import 'package:liquidnews/utils/constants/sizes.dart';
import 'package:liquidnews/utils/constants/text_strings.dart';
import 'package:liquidnews/utils/helpers/helper_functions.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150.0),
              Text(
                AppTexts.email,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(prefixIcon: Icon(Icons.email)),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.back(),
                      child: Text(AppTexts.tContinue))),
            ],
          ),
        ),
      ),
    );
  }
}
