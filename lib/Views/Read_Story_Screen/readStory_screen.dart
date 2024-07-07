import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:get/get.dart';

class ReadStoryScreen extends StatefulWidget {
  const ReadStoryScreen({super.key});

  @override
  State<ReadStoryScreen> createState() => _ReadStoryScreenState();
}

class _ReadStoryScreenState extends State<ReadStoryScreen> {
  bool isPlaying = false;
  double size = 14.0;
  bool isClick = false;

  Future<void> _updateSize(double newSize) async {
    setState(() {
      size = newSize;
    });
  }

  @override
  Widget build(BuildContext context) {
    String storyTitle = "The Adventure of the Flutter Developer";
    String storyContent = """
  Once upon a time, in the vast digital realm, there was a young developer named Alex. Alex was passionate about creating seamless user experiences and decided to embark on a journey to master Flutter. Along the way, Alex faced numerous challenges, from managing state to optimizing performance, but each obstacle only fueled the determination to succeed.

  One day, Alex discovered a powerful tool called ChatGPT, which could generate code, answer questions, and even help debug issues. With the help of ChatGPT, Alex's skills grew exponentially, and soon, the developer was crafting beautiful, efficient apps that users loved.

  The adventure was filled with late-night coding sessions, countless cups of coffee, and the satisfaction of overcoming each hurdle. In the end, Alex became a Flutter expert, ready to take on any challenge that came their way.
  """;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isClick = !isClick;
                });
              },
              child: isClick
                  ? const Icon(
                      Icons.favorite,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                    ),
            ),
          ),
        ],
        title: Text("read_story".tr),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "\" $storyTitle \"",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      storyContent,
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: size),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Slider(
                  activeColor: secondaryColor,
                  value: size,
                  onChanged: (newSize) {
                    _updateSize(newSize);
                  },
                  min: 10.0,
                  max: 40.0,
                  label: size.toStringAsFixed(0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
