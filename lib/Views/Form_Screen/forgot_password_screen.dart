import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Form_Screen/Widgets/round_button.dart';
import 'package:flutter_application_1/Views/Form_Screen/Widgets/round_textfield.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController txtEmail = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  forgotpassword() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Container(
            padding: const EdgeInsets.all(15),
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
                  "reset_your_path".tr,
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
                    "forgot_text".tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 17,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const SizedBox(height: 15),
                RoundTextField(
                  hintText: "email_address".tr,
                  controller: txtEmail,
                  callback: ValidationBuilder().required().email().build(),
                ),
                const SizedBox(height: 25),
                RoundLineButton(
                  title: "reset_password".tr,
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      forgotpassword();
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
