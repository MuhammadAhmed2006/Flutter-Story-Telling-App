import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Select_Card_Screen/selectCard_screen.dart';
import 'package:get/get.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('premium'.tr),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.workspace_premium_rounded,
                color: primaryColor,
                size: 150,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'unlock_premium_features'.tr,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'as_a_premium_member'.tr,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.check_circle, color: secondaryColor),
              title: Text('feature_1'.tr),
            ),
            ListTile(
              leading: const Icon(Icons.check_circle, color: secondaryColor),
              title: Text('feature_2'.tr),
            ),
            ListTile(
              leading: const Icon(Icons.check_circle, color: secondaryColor),
              title: Text('feature_3'.tr),
            ),
            ListTile(
              leading: const Icon(Icons.check_circle, color: secondaryColor),
              title: Text('feature_4'.tr),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SelectCardScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: primaryColor,
              ),
              child: Text(
                'upgrade_to_premium'.tr,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
