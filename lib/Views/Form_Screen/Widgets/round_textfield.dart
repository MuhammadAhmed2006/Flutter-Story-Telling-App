import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/type_def.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final ValidatorCallback callback;
  const RoundTextField({
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        validator: callback,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: hintText,
          labelStyle: const TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}

// class RoundTextFieldValid extends StatelessWidget {
//   final TextEditingController controller;
//   final String hintText;
//   final TextInputType? keyboardType;
//   final bool obscureText;
//   final ValidatorCallback callback;
//   final int length;
//   const RoundTextFieldValid({
//     required this.controller,
//     required this.hintText,
//     this.keyboardType,
//     this.obscureText = false,
//     required this.callback,
//     this.length = 10,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.grey,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: TextFormField(
//         maxLength: length,
//         validator: callback,
//         controller: controller,
//         keyboardType: keyboardType,
//         obscureText: obscureText,
//         decoration: InputDecoration(
//           contentPadding: const EdgeInsets.symmetric(
//             vertical: 15,
//             horizontal: 15,
//           ),
//           focusedBorder: InputBorder.none,
//           enabledBorder: InputBorder.none,
//           errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           hintText: hintText,
//           labelStyle: const TextStyle(
//             fontSize: 15,
//           ),
//         ),
//       ),
//     );
//   }
// }
