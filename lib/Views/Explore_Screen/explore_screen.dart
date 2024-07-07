import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Story_Details_Screen/storyDetails_screen.dart';
import 'package:flutter_application_1/Views/View_All_Genre_Screen/viewGenre_screen.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

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
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "explore".tr,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
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
              RowHeading(theme: theme, text: "all_book".tr, show: true),
              StoriesItem(theme: theme)
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

class CategoriesItem extends StatefulWidget {
  const CategoriesItem({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  _CategoriesItemState createState() => _CategoriesItemState();
}

class _CategoriesItemState extends State<CategoriesItem> {
  int _selectedIndex = 0;

  final List<String> genres = [
    "All",
    "Fantasy",
    "Science Fiction",
    "Mystery",
    "Romance",
    "Thriller",
    "Horror",
    "Historical Fiction",
    "Adventure",
    "Drama",
    "Comedy",
    "Dystopian",
    "Fairy Tale",
    "Children's",
    "Crime"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView.builder(
          itemCount: genres.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final bool isSelected = index == _selectedIndex;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:
                            isSelected ? secondaryColor : Colors.grey.shade500,
                      ),
                      width: 120,
                      height: 40,
                      child: Center(
                        child: Text(
                          genres[index],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
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
