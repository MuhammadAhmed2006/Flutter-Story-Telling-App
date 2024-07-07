import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Form_Screen/Widgets/round_button.dart';
import 'package:flutter_application_1/Views/Form_Screen/Widgets/round_textfield.dart';
import 'package:flutter_application_1/Views/Form_Screen/sign_in_screen.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confpassword = TextEditingController();
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  "join_the_journey".tr,
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
                    "signup_text".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                RoundTextField(
                  hintText: "name".tr,
                  controller: name,
                  callback: ValidationBuilder()
                      .required()
                      .minLength(4)
                      .maxLength(12)
                      .build(),
                ),
                const SizedBox(height: 15),
                RoundTextField(
                  hintText: "email_address".tr,
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
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
                // RoundTextField(
                //   hintText: "Conf Password",
                //   controller: confpassword,
                //   obscureText: true,
                //   callback: ValidationBuilder()
                //       .required()
                //       .minLength(4)
                //       .maxLength(12)
                //       .build(),
                // ),
                // const SizedBox(height: 15),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        child: Text(
                          "already_have_an_account".tr,
                          style: TextStyle(
                            color: Colors.grey.withOpacity(0.8),
                            fontSize: 13,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SigninScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                RoundLineButton(
                  title: "signup_now".tr,
                  onPressed: () {
                    if (_key.currentState!.validate()) {}
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
