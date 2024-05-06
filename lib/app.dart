import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:liquidnews/screens/Auth/welcome_screen.dart';
import 'package:liquidnews/theme/theme.dart';
import 'package:liquidnews/utils/constants/text_strings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: AppTexts.appName,
        themeMode: ThemeMode.system,
        theme: MyAppTheme.lightTheme,
        darkTheme: MyAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen());
  }
}
