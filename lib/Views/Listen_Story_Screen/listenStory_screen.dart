// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/Constants/color.dart';
// import 'package:flutter_tts/flutter_tts.dart';

// class ListenStoryScreen extends StatefulWidget {
//   const ListenStoryScreen({super.key});

//   @override
//   _ListenStoryScreenState createState() => _ListenStoryScreenState();
// }

// class _ListenStoryScreenState extends State<ListenStoryScreen> {
//   final FlutterTts _flutterTts = FlutterTts();

//   bool isPlaying = false;
//   double volume = 1.0;

//   String storyTitle = "The Adventure of the Flutter Developer";
//   String storyContent = """
// Once upon a time, in the vast digital realm, there was a young developer named Alex. Alex was passionate about creating seamless user experiences and decided to embark on a journey to master Flutter. Along the way, Alex faced numerous challenges, from managing state to optimizing performance, but each obstacle only fueled the determination to succeed.

// One day, Alex discovered a powerful tool called ChatGPT, which could generate code, answer questions, and even help debug issues. With the help of ChatGPT, Alex's skills grew exponentially, and soon, the developer was crafting beautiful, efficient apps that users loved.

// The adventure was filled with late-night coding sessions, countless cups of coffee, and the satisfaction of overcoming each hurdle. In the end, Alex became a Flutter expert, ready to take on any challenge that came their way.
// """;

//   @override
//   void dispose() {
//     _flutterTts.stop();
//     super.dispose();
//   }

//   Future<void> _speak() async {
//     await _flutterTts.setVolume(volume);
//     await _flutterTts.speak(storyContent);
//     setState(() {
//       isPlaying = true;
//     });
//   }

//   Future<void> _pause() async {
//     await _flutterTts.pause();
//     setState(() {
//       isPlaying = false;
//     });
//   }

//   void _togglePlayPause() {
//     if (isPlaying) {
//       _pause();
//     } else {
//       _speak();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColor,
//       appBar: AppBar(
//         backgroundColor: backgroundColor,
//         title: const Text('Story Screen'),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_ios_new_rounded,
//             size: 20,
//           ),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   storyTitle,
//                   style: const TextStyle(
//                       fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 16),
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Text(
//                       storyContent,
//                       style: const TextStyle(fontSize: 16),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                     height: 80), // Adjusted for bottom container space
//               ],
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 15.0),
//               decoration: BoxDecoration(
//                 color: primaryColor,
//                 borderRadius: const BorderRadius.only(
//                   topLeft: Radius.circular(20),
//                   topRight: Radius.circular(20),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 15),
//                 child: Row(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: secondaryColor,
//                       ),
//                       width: 120,
//                       height: 50,
//                       child: GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             isPlaying = !isPlaying;
//                           });
//                         },
//                         child: isPlaying
//                             ? IconButton(
//                                 icon: const Icon(
//                                   Icons.pause,
//                                   color: Colors.white,
//                                 ),
//                                 onPressed: () => _togglePlayPause(),
//                               )
//                             : IconButton(
//                                 icon: const Icon(
//                                   Icons.play_arrow,
//                                   color: Colors.white,
//                                 ),
//                                 onPressed: () => _togglePlayPause(),
//                               ),
//                       ),
//                     ),
//                     const SizedBox(width: 15),
//                     // Text("volume"),
//                     Container(
//                       width: 210,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: secondaryColor,
//                       ),
//                       child: Row(
//                         children: [
//                           const SizedBox(width: 20),
//                           const Icon(
//                             Icons.volume_up_rounded,
//                             color: Colors.white,
//                           ),
//                           SizedBox(
//                             width: 160,
//                             child: Slider(
//                               activeColor: Colors.white,
//                               thumbColor: primaryColor,
//                               secondaryActiveColor: Colors.white,
//                               value: 5,
//                               min: 1,
//                               max: 5,
//                               onChanged: (e) {},
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class ListenStoryScreen extends StatefulWidget {
  const ListenStoryScreen({super.key});

  @override
  _ListenStoryScreenState createState() => _ListenStoryScreenState();
}

class _ListenStoryScreenState extends State<ListenStoryScreen> {
  FlutterTts _flutterTts = FlutterTts(); // Declare as instance variable

  bool isPlaying = false;
  double volume = 1.0;

  String storyTitle = "The Adventure of the Flutter Developer";
  String storyContent = """
Once upon a time, in the vast digital realm, there was a young developer named Alex. Alex was passionate about creating seamless user experiences and decided to embark on a journey to master Flutter. Along the way, Alex faced numerous challenges, from managing state to optimizing performance, but each obstacle only fueled the determination to succeed.

One day, Alex discovered a powerful tool called ChatGPT, which could generate code, answer questions, and even help debug issues. With the help of ChatGPT, Alex's skills grew exponentially, and soon, the developer was crafting beautiful, efficient apps that users loved.

The adventure was filled with late-night coding sessions, countless cups of coffee, and the satisfaction of overcoming each hurdle. In the end, Alex became a Flutter expert, ready to take on any challenge that came their way.
""";

  @override
  void dispose() {
    _flutterTts.stop();
    super.dispose();
  }

  Future<void> _speak() async {
    await _flutterTts.setVolume(volume);
    await _flutterTts.speak(storyContent);
    setState(() {
      isPlaying = true;
    });
  }

  Future<void> _pause() async {
    await _flutterTts.pause();
    setState(() {
      isPlaying = false;
    });
  }

  Future<void> _togglePlayPause() async {
    if (isPlaying) {
      await _pause();
    } else {
      await _speak();
    }
  }

  Future<void> _toggleVolume() async {
    if (volume > 0.0) {
      await _flutterTts.setVolume(0.0);
      setState(() {
        volume = 0.0;
        _flutterTts = FlutterTts(); // Recreate the FlutterTts instance
      });
    } else {
      await _flutterTts.setVolume(1.0);
      setState(() {
        volume = 1.0;
        _flutterTts = FlutterTts(); // Recreate the FlutterTts instance
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('story_screen'.tr),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storyTitle,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      storyContent,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                    height: 80), // Adjusted for bottom container space
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondaryColor,
                      ),
                      width: 120,
                      height: 50,
                      child: GestureDetector(
                        onTap: _togglePlayPause,
                        child: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: secondaryColor,
                      ),
                      width: 120,
                      height: 50,
                      child: GestureDetector(
                        onTap: () => _toggleVolume(),
                        child: Icon(
                          volume > 0.0 ? Icons.volume_up : Icons.volume_off,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
