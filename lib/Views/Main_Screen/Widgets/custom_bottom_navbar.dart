import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_application_1/Constants/color.dart';

class CustomBottomAppbar extends StatelessWidget {
  final Color selectedColor;
  final Color unSelectedColor;
  final Function(int index) onTap;
  final List<CustomBottomAppBarItem> children;
  final int selectedTab;
  const CustomBottomAppbar({
    super.key,
    required this.selectedColor,
    required this.unSelectedColor,
    required this.onTap,
    required this.children,
    required this.selectedTab,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: double.infinity,
          height: 80,
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          color: Colors.transparent,
          child: Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.grey.shade300,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: List.generate(
                children.length,
                (index) {
                  return CustomBottomAppBarItem(
                    icon: children[index].icon,
                    text: children[index].text,
                    color:
                        selectedTab == index ? selectedColor : unSelectedColor,
                    press: () {
                      onTap(index);
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBottomAppBarItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? press;
  final Color? color;
  const CustomBottomAppBarItem({
    super.key,
    required this.icon,
    required this.text,
    this.press,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: text,
      child: TextButton(
        style: TextButton.styleFrom(
          textStyle: TextStyle(color: primaryColor),
        ),
        onPressed: press,
        child: Icon(
          icon,
          color: color ?? Colors.grey.shade900,
        ),
      ),
    );
  }
}
