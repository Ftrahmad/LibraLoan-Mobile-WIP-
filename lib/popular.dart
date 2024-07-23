import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF5F8FE),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.fromLTRB(27, 51, 25, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontFamily: 'Futura',
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      fontSize: 27,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print("Container clicked");
                          Navigator.pushNamed(context, '/bookdetail');
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 7.8, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        'assets/images/1.jpeg',
                                      ),
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
                                                  '4.0',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 8,
                                                    color: const Color(0xFF000000),
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
                              ),
                              const Text(
                                'Laskar Pelangi',
                                style: TextStyle(
                                  fontFamily: 'Futura',
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  height: 1.2,
                                  color: Color(0xFF000000),
                                ),
                              ),
                              const Text(
                                'Andrea Hirata',
                                textAlign: TextAlign.center,
                                style: TextStyle(
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
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 8.2, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/2.jpeg',
                                    ),
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
                                              const SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: const Color(0xFF000000),
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
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Text(
                              'Laskar Pelangi',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/3.jpeg',
                                    ),
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
                                              const SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: const Color(0xFF000000),
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
                            ),
                            const Text(
                              'Laskar Pelangi',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 7.8, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/4.jpeg',
                                    ),
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
                                              const SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: const Color(0xFF000000),
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
                            ),
                            const Text(
                              'Laskar Pelangi',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 8.2, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/5.jpeg',
                                    ),
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
                                              const SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: const Color(0xFF000000),
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
                            ),
                            const Text(
                              'Laskar Pelangi',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/6.jpeg',
                                    ),
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
                                              const SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: const Color(0xFF000000),
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
                            ),
                            const Text(
                              'Laskar Pelangi',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 7.8, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/7.jpeg',
                                    ),
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
                                              const SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: const Color(0xFF000000),
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
                            ),
                            const Text(
                              'Laskar Pelangi',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 8.2, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/1.jpeg',
                                    ),
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
                                              const SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: const Color(0xFF000000),
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
                            ),
                            const Text(
                              'Laskar Pelangi',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/2.jpeg',
                                    ),
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
                                              const SizedBox(
                                                  width:
                                                      2), // Add some space between the icon and the text
                                              Text(
                                                '4.0',
                                                style: GoogleFonts.getFont(
                                                  'Roboto Condensed',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 8,
                                                  color: const Color(0xFF000000),
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
                            ),
                            const Text(
                              'Laskar Pelangi',
                              style: TextStyle(
                                fontFamily: 'Futura',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                height: 1.2,
                                color: Color(0xFF000000),
                              ),
                            ),
                            const Text(
                              'Andrea Hirata',
                              textAlign: TextAlign.center,
                              style: TextStyle(
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
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 7.8, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/3.jpeg',
                                  ),
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
                                        borderRadius: BorderRadius.circular(2),
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
                                            const SizedBox(
                                                width:
                                                    2), // Add some space between the icon and the text
                                            Text(
                                              '4.0',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8,
                                                color: const Color(0xFF000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 156.1, 0, 9.5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.fromLTRB(0, 0, 0, 0.4),
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
                          ),
                          const Text(
                            'Laskar Pelangi',
                            style: TextStyle(
                              fontFamily: 'Futura',
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              height: 1.2,
                              color: Color(0xFF000000),
                            ),
                          ),
                          const Text(
                            'Andrea Hirata',
                            textAlign: TextAlign.center,
                            style: TextStyle(
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
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 8.2, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/4.jpeg',
                                  ),
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
                                        borderRadius: BorderRadius.circular(2),
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
                                            const SizedBox(
                                                width:
                                                    2), // Add some space between the icon and the text
                                            Text(
                                              '4.0',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8,
                                                color: const Color(0xFF000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 156.1, 0, 9.5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.fromLTRB(0, 0, 0, 0.4),
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
                          ),
                          const Text(
                            'Laskar Pelangi',
                            style: TextStyle(
                              fontFamily: 'Futura',
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              height: 1.2,
                              color: Color(0xFF000000),
                            ),
                          ),
                          const Text(
                            'Andrea Hirata',
                            textAlign: TextAlign.center,
                            style: TextStyle(
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
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/images/5.jpeg',
                                  ),
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
                                        borderRadius: BorderRadius.circular(2),
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
                                            const SizedBox(
                                                width:
                                                    2), // Add some space between the icon and the text
                                            Text(
                                              '4.0',
                                              style: GoogleFonts.getFont(
                                                'Roboto Condensed',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 8,
                                                color: const Color(0xFF000000),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 156.1, 0, 9.5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.fromLTRB(0, 0, 0, 0.4),
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
                          ),
                          const Text(
                            'Laskar Pelangi',
                            style: TextStyle(
                              fontFamily: 'Futura',
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              height: 1.2,
                              color: Color(0xFF000000),
                            ),
                          ),
                          const Text(
                            'Andrea Hirata',
                            textAlign: TextAlign.center,
                            style: TextStyle(
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
