import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Form_Screen/Widgets/round_button.dart';
import 'package:flutter_application_1/Views/Form_Screen/Widgets/round_textfield.dart';
import 'package:flutter_application_1/Views/Form_Screen/forgot_password_screen.dart';
import 'package:flutter_application_1/Views/Form_Screen/sign_up_screen.dart';
import 'package:flutter_application_1/Views/Select_Genres/selectGenre_screen.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool isStay = false;

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Text(""),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 7),
                Text(
                  "welcome_back".tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: secondaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "signin_text".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                RoundTextField(
                  hintText: "email_address".tr,
                  controller: email,
                  callback: ValidationBuilder().required().email().build(),
                ),
                const SizedBox(height: 15),
                RoundTextField(
                  hintText: "password".tr,
                  controller: password,
                  obscureText: true,
                  callback: ValidationBuilder()
                      .required()
                      .minLength(4)
                      .maxLength(12)
                      .build(),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "signup_now".tr,
                        style: TextStyle(
                          color: isStay
                              ? Colors.black
                              : Colors.grey.withOpacity(0.8),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "forgot_your_password".tr,
                        style: TextStyle(
                          color: Colors.grey.withOpacity(0.8),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                RoundLineButton(
                  title: "login_now".tr,
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SelectGenreScreen(),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
