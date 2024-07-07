import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Form_Screen/Widgets/round_button.dart';
import 'package:flutter_application_1/Views/Otp_Verification_Screen/otpVerification_screen.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';

// card expiry
class CardExpiryInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    // If the length is 2, add a slash after the first character
    if (text.length == 2 && oldValue.text.length < 2) {
      text += '/';
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

// card number
class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newText = newValue.text
        .replaceAll(RegExp(r'\D'), ''); // Remove non-digit characters
    var newString = '';

    for (var i = 0; i < newText.length; i++) {
      newString += newText[i];
      if ((i + 1) % 4 == 0 && i != newText.length - 1) {
        newString +=
            '-'; // Add a dash after every 4 characters, except for the last group
      }
    }

    return TextEditingValue(
      text: newString,
      selection: TextSelection.collapsed(offset: newString.length),
    );
  }
}

String generateRandomNumber(int length) {
  final _random = Random();
  String result = '';
  for (int i = 0; i < length; i++) {
    result += _random.nextInt(10).toString();
  }
  return result;
}

String randomNum = generateRandomNumber(10);

// ignore: must_be_immutable
class CardScreen extends StatelessWidget {
  String? orderId;
  int? phone;
  CardScreen({super.key, this.orderId, this.phone});

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController cardholdername = TextEditingController();
  TextEditingController cardexpire = TextEditingController();
  TextEditingController cardnumber = TextEditingController();
  TextEditingController cardsecurenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('add_payment_details'.tr),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Form(
        key: _key,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 185,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const SweepGradient(
                      center: AlignmentDirectional(1, -1),
                      startAngle: 1.7,
                      endAngle: 3,
                      colors: <Color>[
                        Color.fromARGB(255, 96, 183, 253),
                        Color.fromARGB(255, 96, 183, 253),
                        Color.fromARGB(255, 96, 183, 253),
                        Color.fromARGB(255, 96, 183, 253),
                        Color.fromARGB(255, 96, 183, 253),
                        Color.fromARGB(255, 96, 183, 253),
                      ],
                      stops: [0.0, 0.3, 0.3, 0.7, 0.7, 1.0],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "VISA",
                            style: TextStyle(
                              fontSize: 24.30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "visa Electron",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        enabled: false,
                        controller: cardnumber,
                        style: const TextStyle(
                          fontSize: 24.30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'card_holder_name'.tr,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    TextField(
                                      enabled: false,
                                      controller: cardholdername,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'card_expiry'.tr,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    TextField(
                                      enabled: false,
                                      controller: cardexpire,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                // ========================== Card Holder Name
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      validator:
                          ValidationBuilder().required().minLength(15).build(),
                      onChanged: (value) => cardholdername.value,
                      controller: cardholdername,
                      maxLength: 15,
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: "card_holder_name".tr,
                        labelStyle: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                // ========================== Card Expiry
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      inputFormatters: [CardExpiryInputFormatter()],
                      validator:
                          ValidationBuilder().required().minLength(7).build(),
                      onChanged: (value) => cardexpire.value,
                      controller: cardexpire,
                      maxLength: 7,
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: "card_expiry".tr,
                        labelStyle: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                // ========================== Card Number
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      inputFormatters: [
                        CardNumberInputFormatter()
                      ], // Apply CardNumberInputFormatter
                      validator:
                          ValidationBuilder().required().minLength(16).build(),
                      onChanged: (value) => cardnumber.value,
                      controller: cardnumber,
                      maxLength: 19, // Maximum length considering dashes
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: "card_number".tr,
                        labelStyle: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                // ========================== Card Security Number
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      validator:
                          ValidationBuilder().required().minLength(4).build(),
                      onChanged: (value) => cardsecurenumber.value,
                      controller: cardsecurenumber,
                      maxLength: 4,
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 15,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: "card_security_number".tr,
                        labelStyle: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15),
                  child: RoundLineButton(
                    radius: 5,
                    title: "add".tr,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OtpVerificationScreen(),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
