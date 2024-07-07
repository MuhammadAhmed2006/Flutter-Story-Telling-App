import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:get/get.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("privacy_policy".tr),
        backgroundColor: backgroundColor,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.grey[100], // Background color of the screen
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrivacyPolicySection(
              title: "effective_date".tr,
              content: "january_date".tr, // Replace with your effective date
            ),
            const Divider(),
            PrivacyPolicySection(
              title: "policy_heading_1".tr,
              content: "policy_description_1".tr,
            ),
            const Divider(),
            PrivacyPolicySection(
              title: "policy_heading_2".tr,
              content: "policy_description_2".tr,
            ),
            const Divider(),
            PrivacyPolicySection(
              title: "policy_heading_3".tr,
              content: "policy_description_3".tr,
            ),
            const Divider(),
            PrivacyPolicySection(
              title: "policy_heading_4".tr,
              content: "policy_description_4".tr,
            ),
            const Divider(
              color: Colors.black54,
            ),
            PrivacyPolicySection(
              title: "policy_heading_5".tr,
              content: "policy_description_5".tr,
            ),
          ],
        ),
      ),
    );
  }
}

class PrivacyPolicySection extends StatelessWidget {
  final String title;
  final String content;

  const PrivacyPolicySection({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.blue[50]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.0,
            spreadRadius: 1.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
