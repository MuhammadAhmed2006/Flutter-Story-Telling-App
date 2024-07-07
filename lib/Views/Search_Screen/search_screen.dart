import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Story_Details_Screen/storyDetails_screen.dart';
import 'package:get/get.dart';

class SearchScreen extends StatefulWidget {
  final String? searchQuery;

  const SearchScreen({Key? key, this.searchQuery}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController;
  bool _isTyping = false;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController(text: widget.searchQuery);
    _searchController.addListener(_handleSearch);
  }

  void _handleSearch() {
    setState(() {
      _isTyping = _searchController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _searchController.removeListener(_handleSearch);
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "search_by_name".tr,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              SearchBar(theme: theme, controller: _searchController),
              const SizedBox(height: 20),
              AnimatedOpacity(
                opacity: _isTyping ? 0 : 1,
                duration: const Duration(milliseconds: 300),
                child: Column(
                  children: [
                    RowHeading(
                        theme: theme, text: "most_viewed".tr, show: true),
                    const SizedBox(height: 10),
                    StoriesItem(theme: theme),
                  ],
                ),
              ),
            ],
          ),
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
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 13),
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

  const SearchBar({Key? key, required this.theme, required this.controller})
      : super(key: key);

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
                hintText: "search_book".tr,
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
              onPressed: () {
                // Add search functionality if needed
              },
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

class StoriesItem extends StatelessWidget {
  final ThemeData theme;

  const StoriesItem({
    Key? key,
    required this.theme,
  }) : super(key: key);

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
