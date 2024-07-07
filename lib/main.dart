// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Storage/shared_prefrence_helper.dart';
// import 'package:flutter_application_1/Translation/language_translation.dart';
// import 'package:flutter_application_1/Views/Chatbot_Screen/chat_screen.dart';
// import 'package:flutter_application_1/Views/Splash_Screen/splash_screen.dart';
// import 'package:get/get.dart';
// import 'package:provider/provider.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   String initialLanguage =
//       await SharedPreferencesHelper.loadSelectedLanguage() ?? 'English';
//   Locale initialLocale = (initialLanguage == 'Spanish')
//       ? const Locale('es', 'ES')
//       : const Locale('en', 'US');

//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => ChatProvider(), // Provide your ChatProvider instance
//       child: MyApp(initialLocale: initialLocale),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   final Locale initialLocale;

//   const MyApp({required this.initialLocale, Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "NunitoRegular"),
//       debugShowCheckedModeBanner: false,
//       locale: initialLocale,
//       fallbackLocale: const Locale('en', 'US'),
//       translations: MyTranslations(), // Add your translations class here
//       home: SplashScreen(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Helpers/shared_prefrence_helper.dart';
import 'package:flutter_application_1/Translation/language_translation.dart';
import 'package:flutter_application_1/Views/Chatbot_Screen/chat_screen.dart';
import 'package:flutter_application_1/Views/Splash_Screen/splash_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  String initialLanguage =
      await SharedPreferencesHelper.loadSelectedLanguage() ?? 'English';
  Locale initialLocale;
  if (initialLanguage == 'Spanish') {
    initialLocale = const Locale('es', 'ES');
  } else if (initialLanguage == 'Russian') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Urdu') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'French') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Hindi') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Chinese') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Arabic') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Japanese') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'German') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Korean') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Italian') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Turkish') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Thai') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Vietnamese') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Indonesian') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Dutch') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Swedish') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Norwegian') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Greek') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Hebrew') {
    initialLocale = const Locale('ru', 'RU');
  } else if (initialLanguage == 'Romanian') {
    initialLocale = const Locale('ru', 'RU');
  } else {
    initialLocale = const Locale('en', 'US');
  }

  runApp(
    ChangeNotifierProvider(
      create: (context) => ChatProvider(), // Provide your ChatProvider instance
      child: MyApp(initialLocale: initialLocale),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Locale initialLocale;

  const MyApp({required this.initialLocale, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "NunitoRegular"),
      debugShowCheckedModeBanner: false,
      locale: initialLocale,
      fallbackLocale: const Locale('en', 'US'),
      translations: MyTranslations(), // Add your translations class here
      home: SplashScreen(),
    );
  }
}
