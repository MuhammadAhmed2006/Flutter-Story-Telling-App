import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/View_Genre_Books_Screen/viewGenreBooks_screen.dart';
import 'package:get/get.dart';

class ViewgenreScreen extends StatelessWidget {
  const ViewgenreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              RowHeading(theme: theme, text: "all_genres".tr, show: false),
              CategoriesItem(theme: theme),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesItem extends StatelessWidget {
  CategoriesItem({
    super.key,
    required this.theme,
  });

  final List<String> genres = [
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

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GridView.builder(
          itemCount: 12,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            mainAxisExtent: 70,
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
  });

  final ThemeData theme;
  final String text;
  final bool show;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(23),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              text,
              style: theme.textTheme.bodyMedium!.apply(fontSizeDelta: 4),
            ),
          ),
        ],
      ),
    );
  }
}
