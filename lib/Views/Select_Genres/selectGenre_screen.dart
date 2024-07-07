import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Main_Screen/main_screen.dart';
import 'package:get/get.dart';

class SelectGenreScreen extends StatefulWidget {
  const SelectGenreScreen({super.key});

  @override
  _SelectGenreScreenState createState() => _SelectGenreScreenState();
}

class _SelectGenreScreenState extends State<SelectGenreScreen> {
  final List<String> _genres = [
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
  final List<String> _selectedGenres = [];

  void _toggleSelection(String genre) {
    setState(() {
      if (_selectedGenres.contains(genre)) {
        _selectedGenres.remove(genre);
      } else {
        if (_selectedGenres.length < 3) {
          _selectedGenres.add(genre);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("only_select_3".tr),
            ),
          );
        }
      }
    });
  }

  void _onNextPressed() {
    if (_selectedGenres.length == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainScreen(),
        ),
      );
    }
  }

  void _onSkipPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MainScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 15),
              Text(
                "select_your_favorite_genre".tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "select_genre_subheading".tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 25),
              Wrap(
                spacing: 18,
                runSpacing: 18,
                children: _genres.map((genre) {
                  final isSelected = _selectedGenres.contains(genre);
                  return GestureDetector(
                    onTap: () => _toggleSelection(genre),
                    child: TitleSubtitleCell(
                      title: genre,
                      isSelected: isSelected,
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed:
                        _selectedGenres.length == 3 ? _onNextPressed : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      textStyle: TextStyle(
                        color: _selectedGenres.length == 3
                            ? Colors.white
                            : Colors.grey.shade700,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "next".tr,
                        style: TextStyle(
                          color: _selectedGenres.length == 3
                              ? Colors.white
                              : Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _onSkipPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "skip".tr,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSubtitleCell extends StatelessWidget {
  final String title;
  final bool isSelected;

  const TitleSubtitleCell({
    Key? key,
    required this.title,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        color: isSelected ? secondaryColor : Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [BoxShadow(color: Colors.black45, blurRadius: 2)],
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
