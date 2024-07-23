import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<http.Response> saveBookToProfile(int bookId) async {
    final url = 'https://your-api-url.com/api/v1/profile/save-book';
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer YOUR_API_TOKEN',
    };
    final body = jsonEncode({'book_id': bookId});

    final response = await http.post(Uri.parse(url), headers: headers, body: body);

    return response;
  }

  static Future<List<Book>> getSavedBooks() async {
    final url = 'https://your-api-url.com/api/v1/profile/saved-books';
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer YOUR_API_TOKEN',
    };

    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final savedBooks = jsonData.map((book) => Book.fromJson(book)).toList();

      return savedBooks;
    } else {
      throw Exception('Failed to load saved books');
   }
  }
}

class Book {
  final int id;
  final String title;
  final String author;
  final String coverImage;

  Book({required this.id, required this.title, required this.author, required this.coverImage});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      coverImage: json['cover_image'],
    );
  }
}