import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Create_Story_Screen/createStory_screen.dart';
import 'package:flutter_application_1/Views/Story_Details_Screen/storyDetails_screen.dart';
import 'package:flutter_application_1/Views/View_All_Genre_Screen/viewGenre_screen.dart';
import 'package:flutter_application_1/Views/View_Genre_Books_Screen/viewGenreBooks_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _showDownArrow = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Appbar(theme: theme),
                  const Divider(),
                  RowHeading(theme: theme, text: "recommended".tr, show: false),
                  const EventSlider(),
                  RowHeading(
                    theme: theme,
                    text: "genres".tr,
                    show: true,
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ViewgenreScreen(),
                      ),
                    ),
                  ),
                  CategoriesItem(theme: theme),
                  RowHeading(
                      theme: theme, text: "latest_stories".tr, show: true),
                  StoriesItem(theme: theme),
                ],
              ),
            ),
            if (_showDownArrow)
              Positioned(
                bottom: 16,
                left: 0,
                right: 0,
                child: Center(
                  child: IconButton(
                    icon: const Icon(
                      Icons.keyboard_double_arrow_down_rounded,
                      size: 30,
                      color: secondaryColor,
                    ),
                    onPressed: () {
                      _scrollController.animateTo(
                        _scrollController.position.maxScrollExtent,
                        duration: const Duration(seconds: 2),
                        curve: Curves.easeInOut,
                      );
                      setState(() {
                        _showDownArrow = false;
                      });
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String heading;
  final bool isComingSoon;
  final VoidCallback? onPlayPressed;

  const EventCard({
    required this.title,
    required this.heading,
    this.isComingSoon = false,
    this.onPlayPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: isComingSoon ? null : primaryColor,
                gradient: isComingSoon
                    ? LinearGradient(
                        colors: [primaryColor, secondaryColor],
                      )
                    : null,
                borderRadius: BorderRadius.circular(20),
              ),
              child: isComingSoon
                  ? Center(
                      child: Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : Column(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image.asset(
                            "assets/images/thumbnail.png",
                            width: 500,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 120, top: 20),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    heading,
                                    style: const TextStyle(color: Colors.white),
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
          if (!isComingSoon)
            Positioned(
              top: 90,
              left: 270,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [secondaryColor, primaryColor],
                  ),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    size: 40,
                    color: Colors.white,
                  ),
                  onPressed: onPlayPressed,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class EventSlider extends StatefulWidget {
  const EventSlider({super.key});

  @override
  _EventSliderState createState() => _EventSliderState();
}

class _EventSliderState extends State<EventSlider> {
  final PageController _controller = PageController(viewportFraction: 1);
  int _currentPage = 0;
  Timer? _timer;

  final List<Map<String, String>> _eventData = [
    {
      "title": "create_your_own_story".tr,
      "heading": "event1_text".tr,
    },
    {
      "title": "explore_new_adventure".tr,
      "heading": "event2_text".tr,
    },
    {
      "title": "coming_soon".tr,
      "heading": "",
    },
  ];

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_controller.page!.round() < _eventData.length - 1) {
        _controller.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      } else {
        _controller.jumpToPage(0);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _handlePlayPress(String title) {
    if (title == "create_your_own_story".tr) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CreateStoryScreen(),
        ),
      );
    } else {
      print("another event click");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page % _eventData.length;
              });
            },
            itemCount: _eventData.length *
                1000, // Large number to simulate infinite scrolling
            itemBuilder: (BuildContext context, int index) {
              int itemIndex = index % _eventData.length;
              final event = _eventData[itemIndex];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: EventCard(
                  title: event['title']!,
                  heading: event['heading']!,
                  isComingSoon: event['title'] == "coming_soon".tr,
                  onPlayPressed: () => _handlePlayPress(event['title']!),
                ),
              );
            },
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_eventData.length, (int index) {
                return Container(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? secondaryColor
                        : Colors.grey, // Active and inactive dot colors
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  CategoriesItem({
    super.key,
    required this.theme,
  });

  final ThemeData theme;
  final List<String> genres = [
    "Fantasy",
    "Thriller",
    "Horror",
    "Adventure",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 130,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GridView.builder(
          itemCount: genres.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            mainAxisExtent: 60,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ViewgenrebooksScreen(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                genres[index],
                                style: theme.textTheme.bodyMedium!
                                    .apply(fontSizeDelta: 0.1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class RowHeading extends StatelessWidget {
  const RowHeading({
    super.key,
    required this.theme,
    required this.text,
    required this.show,
    this.onTap,
  });

  final ThemeData theme;
  final String text;
  final bool show;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: theme.textTheme.bodyMedium!.apply(fontSizeDelta: 9),
          ),
          if (show)
            TextButton(
              onPressed: onTap,
              child: Text(
                "view_all".tr,
                style: theme.textTheme.bodyMedium!.apply(
                  color: secondaryColor,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final ThemeData theme;
  final TextEditingController controller;
  final VoidCallback onSearch;

  const SearchBar({
    super.key,
    required this.theme,
    required this.controller,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 270,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: secondaryColor,
                ),
                fillColor: buttonColor,
                hintText: "Search Book",
                filled: true,
                hintStyle:
                    theme.textTheme.bodyMedium!.apply(color: secondaryColor),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: primaryColor,
            ),
            child: IconButton(
              onPressed: onSearch,
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: buttonColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    String name = "asad";
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi $name!",
                style: theme.textTheme.bodyMedium!.apply(fontSizeDelta: 10),
              ),
              Text("what_you_learn_today".tr),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              width: 50,
              height: 50,
              // color: primaryColor,
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
        ],
      ),
    );
  }
}

class StoriesItem extends StatelessWidget {
  final ThemeData theme;

  const StoriesItem({
    super.key,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 530, // Adjust the total height of the container
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GridView.builder(
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            mainAxisExtent: 250, // Adjust the main axis extent (card height)
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StoryDetailsScreen(),
                  ),
                );
              },
              child: Container(
                height: 300, // Adjust the card height as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey.shade300,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          "assets/images/books.jpeg",
                          height: 200, // Adjust the image height
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "Book - Title - Name - Name",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
