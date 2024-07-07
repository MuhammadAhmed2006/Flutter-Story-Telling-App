import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const RoundButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      textColor: Colors.white,
      color: primaryColor,
      height: 50,
      minWidth: double.maxFinite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class RoundButtonSm extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const RoundButtonSm({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      textColor: Colors.white,
      color: primaryColor,
      height: 50,
      minWidth: double.maxFinite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class RoundLineButton extends StatelessWidget {
  final double radius;
  final String title;
  final VoidCallback onPressed;
  const RoundLineButton(
      {super.key, required this.title, required this.onPressed ,this.radius = 20});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: getColor(Colors.white, primaryColor),
        foregroundColor: getColor(primaryColor, Colors.white),
        shadowColor:
            MaterialStateProperty.resolveWith((states) => primaryColor),
        minimumSize: MaterialStateProperty.resolveWith(
          (states) => const Size(double.maxFinite, 50),
        ),
        elevation: MaterialStateProperty.resolveWith(
            (states) => states.contains(MaterialState.pressed) ? 1 : 0),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              width: 1,
              color: states.contains(MaterialState.pressed)
                  ? Colors.transparent
                  : primaryColor,
            ),
          ),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    return MaterialStateProperty.resolveWith((states) =>
        states.contains(MaterialState.pressed) ? colorPressed : color);
  }
}

class MiniRoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const MiniRoundButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => primaryColor),
        foregroundColor:
            MaterialStateProperty.resolveWith((states) => Colors.white),
        shadowColor:
            MaterialStateProperty.resolveWith((states) => primaryColor),
        minimumSize: MaterialStateProperty.resolveWith(
          (states) => const Size(150, 35),
        ),
        shape: MaterialStateProperty.resolveWith(
          (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    return MaterialStateProperty.resolveWith((states) =>
        states.contains(MaterialState.pressed) ? colorPressed : color);
  }
}
