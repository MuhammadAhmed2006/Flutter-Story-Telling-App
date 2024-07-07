import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewgenrebooksScreen extends StatelessWidget {
  const ViewgenrebooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              RowHeading(
                  theme: theme, text: "all_book_of_this_genre".tr, show: false),
              StoriesItem(theme: theme),
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
            padding: const EdgeInsets.only(left: 60),
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
      height: 1000,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GridView.builder(
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            mainAxisExtent: 250, // Adjust the main axis extent (card height)
          ),
          itemBuilder: (context, index) {
            return Container(
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
            );
          },
        ),
      ),
    );
  }
}
