import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:get/get.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("help_center".tr),
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
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "popular_topics".tr,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  HelpTopicItem(
                    icon: Icons.book,
                    title: "how_to_create_a_story".tr,
                    onTap: () {
                      // Navigate to detailed topic page
                    },
                  ),
                  HelpTopicItem(
                    icon: Icons.edit,
                    title: "editing_you_stories".tr,
                    onTap: () {
                      // Navigate to detailed topic page
                    },
                  ),
                  HelpTopicItem(
                    icon: Icons.share,
                    title: "share_stories".tr,
                    onTap: () {
                      // Navigate to detailed topic page
                    },
                  ),
                  HelpTopicItem(
                    icon: Icons.account_circle,
                    title: "managing_your_profile".tr,
                    onTap: () {
                      // Navigate to detailed topic page
                    },
                  ),
                  HelpTopicItem(
                    icon: Icons.security,
                    title: "privacy_and_security".tr,
                    onTap: () {
                      // Navigate to detailed topic page
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HelpTopicItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const HelpTopicItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [primaryColor, secondaryColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
