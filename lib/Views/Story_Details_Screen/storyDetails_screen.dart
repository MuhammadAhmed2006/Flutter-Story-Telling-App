import 'package:flutter/material.dart';
import 'package:flutter_application_1/Constants/color.dart';
import 'package:flutter_application_1/Views/Listen_Story_Screen/listenStory_screen.dart';
import 'package:flutter_application_1/Views/Read_Story_Screen/readStory_screen.dart';
import 'package:get/get.dart';

class StoryDetailsScreen extends StatelessWidget {
  const StoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    margin: const EdgeInsets.only(top: 30, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                              const Icon(Icons.chevron_left_rounded, size: 30),
                        ),
                        Text(
                          "book_details".tr,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.share),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 267,
                    width: 175,
                    // ===================
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      // child: Image.asset(

                      //   fit: BoxFit.fill,
                      // ),
                      child: Image.asset(
                        "assets/images/thumbnail.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 30),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "title".tr,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Text(
                                    "Harry Potter : Goblet Of Fire",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "genre",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "description".tr,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          "Enchantment,as defined by bestselling business guru Guy Kawasaki, is not about manipulating people. It transform situations and relationships.",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 60,
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "rating".tr,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const Text(
                                    "5",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                              VerticalDivider(
                                  color: primaryColor, thickness: 1),
                              Column(
                                children: [
                                  Text(
                                    "author".tr,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const Text(
                                    "author",
                                    // "author",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                              VerticalDivider(
                                  color: primaryColor, thickness: 1),
                              Column(
                                children: [
                                  Text(
                                    "language".tr,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  const Text(
                                    "ENG",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 150,
                              margin: const EdgeInsets.only(top: 30),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: TextButton(
                                  child: Text(
                                    "read_story".tr,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ReadStoryScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 50,
                              width: 150,
                              margin: const EdgeInsets.only(top: 30),
                              child: TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                child: TextButton(
                                  child: Text(
                                    "listen_story".tr,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ListenStoryScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
