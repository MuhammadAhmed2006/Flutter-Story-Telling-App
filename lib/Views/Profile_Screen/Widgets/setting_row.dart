import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';

class SettingRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  const SettingRow({
    super.key,
    required this.icon,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 30,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  colors: [
                    Colors.blue,
                    primaryColor,
                    secondaryColor,
                  ],
                  tileMode: TileMode.clamp,
                ).createShader(bounds);
              },
              child: Icon(
                icon,
                color: Colors
                    .white, // This ensures the gradient is applied correctly
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
            ),
            Image.asset(
              "assets/images/p_next.png",
              height: 12,
              width: 12,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
