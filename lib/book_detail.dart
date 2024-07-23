import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BookDetail extends StatefulWidget {
  const BookDetail({Key? key}) : super(key: key);

  @override
  _BookDetailState createState() => _BookDetailState();
}

class Book {
  int id;
  String title;
  String author;
  String imageUrl;

  Book({required this.id, required this.title, required this.author, required this.imageUrl});

  // Convert a Book instance to a JSON map
  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'author': author,
    'imageUrl': imageUrl,
  };

  static fromJson(jsonBook) {}
}

Future<void> saveBookToProfile(Book book) async {
  final apiUrl = 'https://your-api-endpoint.com/save-book';
  final headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer YOUR_API_TOKEN', // Replace with your API token
  };

  final bookJson = jsonEncode(book.toJson());

  final response = await http.post(Uri.parse(apiUrl), headers: headers, body: bookJson);

  if (response.statusCode == 201) {
    print('Book saved successfully!');
  } else {
    print('Error saving book: ${response.statusCode}');
  }
}


class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10), // Menambahkan padding ke kiri
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 1,
                          right: 10), // Menambahkan padding di sebelah kanan
                      child: Text(
                        'Book Details',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Futura',
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              // Baris baru untuk menempatkan gambar dan teks secara horizontal
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Mengatur teks berada di atas gambar
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25), // Menambahkan padding di sebelah kiri gambar
                  child: Container(
                    width: 125, // Lebar gambar mengikuti lebar layar
                    height: 181,
                    decoration: ShapeDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://m.media-amazon.com/images/I/81bsw6fnUiL._AC_UF1000,1000_QL80_.jpg"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                ),
                const SizedBox(
                    width: 35), // Menambahkan jarak antara gambar dan teks
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Laskar Pelangi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                        height: 9), // Menambahkan sedikit jarak antara teks
                    const Text(
                      'Andrea Hirata',
                      style: TextStyle(
                        color: Color(0xFF919191),
                        fontSize: 16,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                        height:
                            5), // Menambahkan sedikit jarak antara teks dan bintang
                    Row(
                      children: List.generate(5, (index) {
                        return const Icon(Icons.star,
                            color: Colors.amber, size: 16);
                      }),
                    ),
                    const SizedBox(height: 5),
                    const Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Stock : ',
                            style: TextStyle(
                              color: Color(0x8E9D9D9D),
                              fontSize: 16,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: '15',
                            style: TextStyle(
                              color: Color(0xFF0B0A0A),
                              fontSize: 16,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                        height:
                            10), // Menambahkan jarak antara bintang dan tombol

                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Memusatkan tombol dalam Row
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.24, // Lebar tombol responsif
                          height: MediaQuery.of(context).size.height *
                              0.05, // Tinggi tombol responsif
                          child: ElevatedButton(
                            onPressed: () async {
                              Book selectedBook = Book(
                                id: 1, // Replace with the actual book ID
                                title: 'Laskar Pelangi',
                                author: 'Andrea Hirata',
                                imageUrl: 'assets/images/1.jpeg',
                              );
                              await saveBookToProfile(selectedBook);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 255,
                                  255, 255), // Warna latar belakang tombol
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.50),
                                side: const BorderSide(
                                    width: 1, color: Color(0xFFA7C1F6)),
                              ),
                            ),
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Futura',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Menambahkan jarak antara tombol
                        SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.25, // Lebar tombol responsif
                          height: MediaQuery.of(context).size.height *
                              0.05, // Tinggi tombol responsif
                          child: ElevatedButton(
                            onPressed: () {
                              // Aksi yang dijalankan ketika tombol ditekan
                              RequestBookDialog(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFA7C1F6),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.50),
                              ),
                            ),
                            child: const Text(
                              'Request Book',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: 'Futura',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 235,
                    child: Text(
                      'Synopsis',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Futura',
                          fontWeight: FontWeight.w500,
                          height: 0,
                          decoration: TextDecoration.none),
                    ),
                  ),
                  const SizedBox(
                      height:
                          8), // Menambahkan jarak antara judul synopsis dan isi
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sollicitudin consectetur bibendum. In in purus sollicitudin, bibendum enim et, finibus mi. Nunc aliquet arcu lorem, tempor fermentum dui porta quis. Nulla aliquam elementum placerat. Fusce maximus arcu nec magna faucibus rutrum. Pellentesque bibendum scelerisque est vitae vestibulum. Ut vehicula at justo et tempus.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Futura',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      height: 1, // Menambahkan jarak antar baris teks
                    ),
                  ),

                  const SizedBox(
                      height:
                          8), // Menambahkan jarak antara judul genre dan isi
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Widget Horror
                          SizedBox(
                            width: 84.76,
                            height: 22,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 84.76,
                                    height: 22,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Color(0xFFA7C1F6)),
                                        borderRadius:
                                            BorderRadius.circular(3.50),
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 0,
                                  top: 5.08,
                                  child: SizedBox(
                                    width: 84.76,
                                    height: 11.85,
                                    child: Text(
                                      'Horror',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Futura',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8), // Jarak antara widget
                          // Widget Comedy
                          SizedBox(
                            width: 84.76,
                            height: 22,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 84.76,
                                    height: 22,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Color(0xFFA7C1F6)),
                                        borderRadius:
                                            BorderRadius.circular(3.50),
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 0,
                                  top: 5.08,
                                  child: SizedBox(
                                    width: 84.76,
                                    height: 11.85,
                                    child: Text(
                                      'Comedy',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Futura',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8), // Jarak antara widget
                          // Widget Romance
                          SizedBox(
                            width: 84.76,
                            height: 22,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 84.76,
                                    height: 22,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Color(0xFFA7C1F6)),
                                        borderRadius:
                                            BorderRadius.circular(3.50),
                                      ),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 0,
                                  top: 5.08,
                                  child: SizedBox(
                                    width: 84.76,
                                    height: 11.85,
                                    child: Text(
                                      'Romance',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Futura',
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                          height:
                              8), // Jarak antara baris widget dan teks "Reviews"
                      const SizedBox(
                        width: 235,
                        child: Text(
                          'Reviews',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                            height: 0,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 1,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x2D919191),
                              blurRadius: 10.40,
                              offset: Offset(4, 5),
                              spreadRadius: 5,
                            )
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 16,
                              top: 8,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.54,
                                height:
                                    MediaQuery.of(context).size.width * 0.19,
                                child: Stack(
                                  children: [
                                    const Positioned(
                                      left: 52,
                                      top: 20,
                                      child: SizedBox(
                                        width: 120,
                                        height: 30,
                                        child: Text(
                                          'pcr_wonu',
                                          style: TextStyle(
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                            fontSize: 16,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      top: 10,
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://awsimages.detik.net.id/community/media/visual/2022/11/20/parti-kejora-bayi-orang-utan-di-serulingmas-zoo-banjarnegara-minggu-20112022-6_43.jpeg?w=650"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 52,
                              top: 65,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.75,
                                height: MediaQuery.of(context).size.width *
                                    1, // Memperlebar tinggi teks
                                child: const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sollicitudin consectetur bibendum. In in purus sollicitudin, bibendum enim et, finibus mi. Vivamus sed malesuada dolor. Suspendisse potenti.',
                                  textAlign: TextAlign.justify,
                                  overflow: TextOverflow
                                      .ellipsis, // Mengatur overflow ke ellipsis
                                  maxLines:
                                      20, // Maksimum baris yang akan ditampilkan
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Futura',
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}


void RequestBookDialog(BuildContext context) {
  bool isChecked = false;

  AwesomeDialog(
    context: context,
    dialogType: DialogType.noHeader,
    dialogBackgroundColor: Colors.white,
    body: StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width * 1.25,
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 305.30,
                  height: 29.56,
                  child: Text(
                    'Request Book',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Futura',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 305.30,
                  height: 181.06,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 305.30,
                          height: 181.06,
                          decoration: BoxDecoration(
                            color: const Color(0xFFE7EFFF),
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 18.31,
                        top: 20.93,
                        child: SizedBox(
                          width: 272.30,
                          height: 23.65,
                          child: Text(
                            'Book Detail',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 17.88,
                        top: 63.55,
                        child: SizedBox(
                          width: 272.30,
                          height: 19.95,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 272.30,
                                  height: 19.95,
                                  child: Text(
                                    'Book name ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 272.30,
                                  height: 19.95,
                                  child: Text(
                                    'Mariposa',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17.88,
                        top: 129.33,
                        child: Container(
                          width: 275.05,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.50,
                              color: Colors.black.withOpacity(0.22),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 17.88,
                        top: 99.77,
                        child: SizedBox(
                          width: 272.30,
                          height: 19.95,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 272.30,
                                  height: 19.95,
                                  child: Text(
                                    'Author',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 272.30,
                                  height: 19.95,
                                  child: Text(
                                    'Luluk HF',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 17.88,
                        top: 92.38,
                        child: Container(
                          width: 275.05,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.50,
                              color: Colors.black.withOpacity(0.22),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 17.88,
                        top: 135.98,
                        child: SizedBox(
                          width: 272.30,
                          height: 19.95,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 272.30,
                                  height: 19.95,
                                  child: Text(
                                    'Pages',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: 272.30,
                                  height: 19.95,
                                  child: Text(
                                    '150 pages',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(CupertinoIcons.info, size: 20, color: Colors.black),
                    SizedBox(width: 5),
                    SizedBox(
                      width: 265,
                      height: 19,
                      child: Text(
                        'Terms & Condition',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Futura',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const SizedBox(
                  width: 294,
                  height: 100,
                  child: Text(
                    '     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sollicitudin consectetur bibendum. In in purus sollicitudin, bibendum enim et, finibus mi.Nunc aliquet arcu lorem, tempor fermentum dui porta quis. Nulla aliquam elementum placerat. Fusce maximus arcu nec magna faucibus rutrum. Pellentesque bibendum scelerisque est vitae vestibulum. Ut vehicula at justo et tempus.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Futura',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 305.30, // Set width to 305.30 to match other elements
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          if (newValue != null) {
                            setState(() {
                              isChecked = newValue;
                            });
                          }
                        },
                        activeColor:
                            Colors.blue, // Color of the checkbox when checked
                        checkColor: Colors.white, // Color of the checkmark
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5), // Rounded corners
                        ),
                        side: const BorderSide(
                          color: Color(0xFFA7C1F6), // Border color
                          width: 2, // Border width
                        ),
                      ),
                      const SizedBox(width: 1),
                      const Expanded(
                        // Use Expanded to prevent overflow
                        child: Text(
                          'Accepted',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA7C1F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.50),
                      ),
                    ),
                    child: const Text(
                      'Request Book',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  ).show();
}
