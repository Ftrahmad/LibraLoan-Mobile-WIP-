import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategorySelectionState createState() => _CategorySelectionState();
}

class Book {
  final String title;
  final String author;
  final String category;
  final String imagePath;
  final double rating;

  Book({
    required this.title,
    required this.author,
    required this.category,
    required this.imagePath,
    required this.rating,
  });
}

class _CategorySelectionState extends State<Categories> {
  final List<String> categories = ['Romance', 'Horror', 'Fiction'];
  String selectedCategory = '';

  final List<Book> books = [
    Book(
        title: 'Laskar Pelangi',
        author: 'Andrea Hirata',
        category: 'Romance',
        imagePath: 'assets/images/6.jpeg',
        rating: 4.0),
    Book(
        title: 'Laskar Pelangi',
        author: 'Andrea Hirata',
        category: 'Horror',
        imagePath: 'assets/images/4.jpeg',
        rating: 4.5),
    Book(
        title: 'Laskar Pelangi',
        author: 'Andrea Hirata',
        category: 'Fiction',
        imagePath: 'assets/images/7.jpeg',
        rating: 3.5),
    Book(
        title: 'Laskar Pelangi',
        author: 'Andrea Hirata',
        category: 'Fiction',
        imagePath: 'assets/images/3.jpeg',
        rating: 3.5),
    Book(
        title: 'Laskar Pelangi',
        author: 'Andrea Hirata',
        category: 'Romance',
        imagePath: 'assets/images/1.jpeg',
        rating: 4.0),
    Book(
        title: 'Laskar Pelangi',
        author: 'Andrea Hirata',
        category: 'Horror',
        imagePath: 'assets/images/4.jpeg',
        rating: 4.5),
    Book(
        title: 'Laskar Pelangi',
        author: 'Andrea Hirata',
        category: 'Fiction',
        imagePath: 'assets/images/2.jpeg',
        rating: 3.5),
    Book(
        title: 'Laskar Pelangi',
        author: 'Andrea Hirata',
        category: 'Romance',
        imagePath: 'assets/images/5.jpeg',
        rating: 4.0),
    Book(
        title: 'Laskar Pelangi',
        author: 'Andrea Hirata',
        category: 'Horror',
        imagePath: 'assets/images/4.jpeg',
        rating: 4.5),
  ];

  List<Book> get filteredBooks {
    if (selectedCategory.isEmpty) {
      return books;
    } else {
      return books.where((book) => book.category == selectedCategory).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 24.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: categories.map((category) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = category;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        padding: const EdgeInsets.fromLTRB(0, 10.5, 0, 10.5),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFCFDFFF)),
                          borderRadius: BorderRadius.circular(5),
                          color: selectedCategory == category
                              ? Colors.blueAccent
                              : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            category,
                            style: const TextStyle(
                              fontFamily: 'Futura',
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      spacing: 4.0,
                      runSpacing: 8.0,
                      children: List.generate(filteredBooks.length, (index) {
                        final book = filteredBooks[index];
                        return GestureDetector(
                          onTap: () {
                            print("Container clicked");
                            Navigator.pushNamed(context, '/bookdetail',
                                arguments: book);
                          },
                          child: Container(
                            width: (constraints.maxWidth - 40) /
                                3, // Sesuaikan lebar container dengan lebar layar
                            margin: EdgeInsets.fromLTRB(5, 0, 0, 10.5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(book.imagePath),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: -4.2,
                                        bottom: -3.1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                          width: 37.9,
                                          height: 16.2,
                                          child: Center(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 8,
                                                ),
                                                const SizedBox(width: 2),
                                                Text(
                                                  book.rating.toString(),
                                                  style: TextStyle(
                                                    fontFamily:
                                                        'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 8,
                                                    color:
                                                        const Color(0xFF000000),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 156.1, 0, 9.5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 0, 0, 0.4),
                                              width: 8.2,
                                              height: 8.2,
                                              child: const SizedBox(
                                                width: 8.2,
                                                height: 8.2,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  book.title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: 'Futura',
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                    height: 1.2,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                Text(
                                  book.author,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontFamily: 'Futura',
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 12,
                                    height: 1.2,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
