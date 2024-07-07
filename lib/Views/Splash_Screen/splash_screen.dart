import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/On_Boarding_Screen/onBoarding_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _textAnimationController;
  late AnimationController _shapeAnimationController;
  late Animation<double> _textFadeAnimation;
  late List<String> _texts;
  late List<String> _displayedTexts;
  late Animation<Offset> _shapeAnimation1;
  late Animation<Offset> _shapeAnimation2;
  late Animation<Offset> _shapeAnimation3;

  @override
  void initState() {
    super.initState();

    // Initialize text animation controller
    _textAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Text animation duration
    );

    // Initialize shape animation controller
    _shapeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5), // Shape animation duration
    )..repeat(reverse: true);

    // Define the text fade-in animation
    _textFadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_textAnimationController);

    // Define the shape animations
    _shapeAnimation1 = Tween<Offset>(
      begin: const Offset(-0.5, -0.5),
      end: const Offset(1.5, 1.5),
    ).animate(_shapeAnimationController);

    _shapeAnimation2 = Tween<Offset>(
      begin: const Offset(-1.5, -1.5),
      end: const Offset(2.5, 1.5),
    ).animate(_shapeAnimationController);

    _shapeAnimation3 = Tween<Offset>(
      begin: const Offset(-1.5, -1.5),
      end: const Offset(1, 2),
    ).animate(_shapeAnimationController);

    // Initialize texts
    _texts = ['story'.tr, 'fusion'.tr];
    _displayedTexts = ['', ''];

    // Start typing animation
    _startTyping();

    // Navigate to the next screen after text animation completes
    _textAnimationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ),
        );
      }
    });
  }

  Future<void> _startTyping() async {
    for (int j = 0; j < _texts.length; j++) {
      for (int i = 0; i < _texts[j].length; i++) {
        setState(() {
          _displayedTexts[j] = _texts[j].substring(0, i + 1);
        });
        await Future.delayed(const Duration(milliseconds: 100));
      }
      await Future.delayed(const Duration(seconds: 1));
    }
    _textAnimationController.forward();
  }

  @override
  void dispose() {
    _textAnimationController.dispose();
    _shapeAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Custom background with shapes
          Container(
            color: Colors.white, // Lighter background color
            child: CustomPaint(
              painter: ShapePainter(
                animation1: _shapeAnimation1,
                animation2: _shapeAnimation2,
                animation3: _shapeAnimation3,
              ),
            ),
          ),

          // Animated Texts with Gradient Color and Fade-in Effect
          Center(
            child: FadeTransition(
              opacity: _textFadeAnimation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [primaryColor, secondaryColor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.srcIn,
                      child: Text(
                        _displayedTexts[0],
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: [primaryColor, secondaryColor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.srcIn,
                      child: Text(
                        _displayedTexts[1],
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  final Animation<Offset> animation1;
  final Animation<Offset> animation2;
  final Animation<Offset> animation3;

  ShapePainter({
    required this.animation1,
    required this.animation2,
    required this.animation3,
  }) : super(repaint: Listenable.merge([animation1, animation2, animation3]));

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Draw first circle
    paint.color = secondaryColor.withOpacity(0.6);
    canvas.drawCircle(
      Offset(
          size.width * animation1.value.dx, size.height * animation1.value.dy),
      60,
      paint,
    );

    // Draw second circle
    paint.color = secondaryColor.withOpacity(0.5);
    canvas.drawCircle(
      Offset(
          size.width * animation2.value.dx, size.height * animation2.value.dy),
      75,
      paint,
    );

    // Draw third circle
    paint.color = secondaryColor.withOpacity(0.5);
    canvas.drawCircle(
      Offset(
          size.width * animation3.value.dx, size.height * animation3.value.dy),
      100,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
