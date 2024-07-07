import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/All_Setting_Screen/settings_screen.dart';
import 'package:flutter_application_1/Views/Edit_Profile_Screen/editProfile_screen.dart';
import 'package:flutter_application_1/Views/Help_Center_Screen/helpCenter_screen.dart';
import 'package:flutter_application_1/Views/Premium_Screen/premium_screen.dart';
import 'package:flutter_application_1/Views/Privacy_Policy_Screen/privacyPolicy_screen.dart';
import 'package:flutter_application_1/Views/Profile_Screen/Widgets/round_button.dart';
import 'package:flutter_application_1/Views/Profile_Screen/Widgets/setting_row.dart';
import 'package:flutter_application_1/Views/Profile_Screen/Widgets/title_subtitle_cell.dart';
import 'package:flutter_application_1/Views/Rate_Screen/rate_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool positive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Text(""),
        centerTitle: true,
        elevation: 0,
        title: Text(
          "profile".tr,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            primaryColor,
                            secondaryColor,
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "M",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "user_name".tr,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "user_name".tr,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    height: 25,
                    child: RoundButton(
                      title: "edit".tr,
                      type: RoundButtonType.bgGradient,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfileScreen(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: TitleSubtitleCell(
                      title: "adventure".tr,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TitleSubtitleCell(
                      title: "drama".tr,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: TitleSubtitleCell(
                      title: "comedy".tr,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(color: Colors.black12, blurRadius: 2)
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SettingRow(
                      icon: Icons.contact_support,
                      title: "help_center".tr,
                      onPressed: _onHelpCenterTap,
                    ),
                    SettingRow(
                      icon: Icons.privacy_tip,
                      title: "privacy_policy".tr,
                      onPressed: _onPrivacyPolicyTap,
                    ),
                    SettingRow(
                      icon: Icons.workspace_premium,
                      title: "subscription_info".tr,
                      onPressed: _onPremiumTap,
                    ),
                    SettingRow(
                      icon: Icons.star_border_rounded,
                      title: "rate_app".tr,
                      onPressed: _onRateTap,
                    ),
                    SettingRow(
                      icon: Icons.settings,
                      title: "settings".tr,
                      onPressed: _onSettingTap,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "log_out".tr,
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Icon(
                      Icons.logout_rounded,
                      color: primaryColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "delete_account".tr,
                      style: const TextStyle(
                        color: Colors.redAccent,
                        fontSize: 15, // Reduced font size
                        fontWeight: FontWeight.w300, // Adjusted font weight
                      ),
                    ),
                    const Icon(
                      Icons.delete_rounded,
                      color: Colors.redAccent,
                      size: 20, // Reduced icon size
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onHelpCenterTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HelpCenterScreen(),
      ),
    );
  }

  void _onPrivacyPolicyTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PrivacyPolicyScreen(),
      ),
    );
  }

  void _onPremiumTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PremiumScreen(),
      ),
    );
  }

  void _onRateTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RateScreen(),
      ),
    );
  }

  void _onSettingTap() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      ),
    );
  }
}
