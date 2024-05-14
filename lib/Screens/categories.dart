import 'package:flutter/material.dart';
import 'package:liber_maniac/categories/children_screen.dart';
import 'package:liber_maniac/categories/comic_screen.dart';
import 'package:liber_maniac/categories/history_screen.dart';
import 'package:liber_maniac/categories/horror_screen.dart';
import 'package:liber_maniac/categories/mystery_screen.dart';
import 'package:liber_maniac/categories/romance_screen.dart';
import 'package:liber_maniac/categories/scifi_screen.dart';
import 'package:liber_maniac/categories/thriller_screen.dart';

class Categories {
  final String title;
  final String imagePath;
  final Widget destination;

  Categories(
      {required this.title,
      required this.imagePath,
      required this.destination,
      r});
}

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});

  final List<Categories> categoryList = [
    Categories(
        title: 'Mystery',
        imagePath: 'lib/images/mystery.png',
        destination: MysteryPage()),
    Categories(
        title: 'Science Fiction',
        imagePath: 'lib/images/scifi.png',
        destination: SciFiPage()),
    Categories(
        title: 'Historical Fantasy',
        imagePath: 'lib/images/historical.png',
        destination: HistoryPage()),
    Categories(
        title: 'Romance',
        imagePath: 'lib/images/romance.png',
        destination: RomancePage()),
    Categories(
        title: 'Thriller',
        imagePath: 'lib/images/thriller.png',
        destination: ThrillerPage()),
    Categories(
        title: 'Horror',
        imagePath: 'lib/images/horror.png',
        destination: HorrorPage()),
    Categories(
        title: 'Children Literature',
        imagePath: 'lib/images/children.png',
        destination: ChildrenPage()),
    Categories(
        title: 'Comics',
        imagePath: 'lib/images/comic.png',
        destination: ComicPage()),
    // Add more comics as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Categories',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(129, 8, 61, 1.0),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: ListView.builder(
        itemCount: categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => categoryList[index].destination),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      categoryList[index].imagePath,
                      width: 100,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                            categoryList[index].title,
                            style: const TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
