import 'package:flutter/material.dart';
import 'package:liber_maniac/Screens/book_read_screen.dart';
import 'package:liber_maniac/Screens/book_screen_detail.dart';
import 'package:liber_maniac/bookdata/bookdata.dart';

class BookList {
  final String title;
  final String imagePath;
  final String description;
  final double price;
  final String author;

  BookList({
    required this.title,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.author,
  });
}

class LibraryPage extends StatelessWidget {
  LibraryPage({super.key});

  final List<BookList> bookList = [
    BookList(
      title: 'Clarimonde',
      imagePath: 'lib/images/clarimonde.jpg',
      description: clarimonde,
      price: 9.99,
      author: 'Théophile Gautier',
    ),
    BookList(
      title: 'The Art of war',
      imagePath: 'lib/images/the_art_of_war.jpg',
      description: artOfWar,
      price: 14.99,
      author: 'ASun Tzu',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Children Literature',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(129, 8, 61, 1.0),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to BookDetailsScreen when tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookReadScreen(
                    key: UniqueKey(),
                    title: bookList[index].title,
                    imagePath: bookList[index].imagePath,
                    description: bookList[index].description,
                    price: bookList[index].price,
                  ),
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      bookList[index].imagePath,
                      width: 100,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(bookList[index].title),
                          subtitle: Text('Author: ${bookList[index].author}'),
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
