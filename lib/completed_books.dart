import 'package:flutter/material.dart';
import 'package:libraloan/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletedBooks extends StatelessWidget {
  const CompletedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF5F8FE),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 70, 27, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(6.9, 0, 6.9, 36),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 277.6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 12, 0, 9),
                            width: 16.5,
                            height: 11,
                            child: const SizedBox(
                              width: 16.5,
                              height: 11,
                              child: Icon(
                                Icons.arrow_back_outlined,
                                size: 16.5,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Completed Books',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w500,
                            fontSize: 27,
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.9, // set the width to 90% of the screen width
                  height: 138,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width *
                              0.9, // set the width to 90% of the screen width
                          height: 138,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x59BDBDBE),
                                blurRadius: 17.10,
                                offset: Offset(0, 10),
                                spreadRadius: 3,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.25, // set the left position to 5% of the screen width
                        top: 39,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Details',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF8BB0FA),
                              fontSize: 10,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.05, // set the left positionto 5% of the screen width
                        top: 14,
                        child: Container(
                          width: 85.51, // keep the width fixed
                          height: 110,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/HerWorld.jpeg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x339D9D9D),
                                blurRadius: 21.60,
                                offset: Offset(7, 9),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 33,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Laskar Pelangi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              height: 0.07,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 70,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Started date',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '                       ',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-05',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 86,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text(
                                    'Completed date ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-06',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.9, // set the width to 90% of the screen width
                  height: 138,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width *
                              0.9, // set the width to 90% of the screen width
                          height: 138,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x59BDBDBE),
                                blurRadius: 17.10,
                                offset: Offset(0, 10),
                                spreadRadius: 3,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.25, // set the left position to 5% of the screen width
                        top: 39,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Details',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF8BB0FA),
                              fontSize: 10,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.05, // set the left positionto 5% of the screen width
                        top: 14,
                        child: Container(
                          width: 85.51, // keep the width fixed
                          height: 110,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/HerWorld.jpeg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x339D9D9D),
                                blurRadius: 21.60,
                                offset: Offset(7, 9),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 33,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Laskar Pelangi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              height: 0.07,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 70,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Started date',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '                       ',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-05',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 86,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text(
                                    'Completed date ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-06',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.9, // set the width to 90% of the screen width
                  height: 138,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width *
                              0.9, // set the width to 90% of the screen width
                          height: 138,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x59BDBDBE),
                                blurRadius: 17.10,
                                offset: Offset(0, 10),
                                spreadRadius: 3,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.25, // set the left position to 5% of the screen width
                        top: 39,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Details',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF8BB0FA),
                              fontSize: 10,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.05, // set the left positionto 5% of the screen width
                        top: 14,
                        child: Container(
                          width: 85.51, // keep the width fixed
                          height: 110,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/HerWorld.jpeg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x339D9D9D),
                                blurRadius: 21.60,
                                offset: Offset(7, 9),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 33,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Laskar Pelangi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              height: 0.07,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 70,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Started date',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '                       ',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-05',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 86,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text(
                                    'Completed date ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-06',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.9, // set the width to 90% of the screen width
                  height: 138,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width *
                              0.9, // set the width to 90% of the screen width
                          height: 138,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x59BDBDBE),
                                blurRadius: 17.10,
                                offset: Offset(0, 10),
                                spreadRadius: 3,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.25, // set the left position to 5% of the screen width
                        top: 39,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Details',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF8BB0FA),
                              fontSize: 10,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.05, // set the left positionto 5% of the screen width
                        top: 14,
                        child: Container(
                          width: 85.51, // keep the width fixed
                          height: 110,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/HerWorld.jpeg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x339D9D9D),
                                blurRadius: 21.60,
                                offset: Offset(7, 9),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 33,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Laskar Pelangi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              height: 0.07,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 70,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Started date',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '                       ',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-05',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 86,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text(
                                    'Completed date ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-06',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.9, // set the width to 90% of the screen width
                  height: 138,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width *
                              0.9, // set the width to 90% of the screen width
                          height: 138,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x59BDBDBE),
                                blurRadius: 17.10,
                                offset: Offset(0, 10),
                                spreadRadius: 3,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.25, // set the left position to 5% of the screen width
                        top: 39,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Details',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF8BB0FA),
                              fontSize: 10,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.05, // set the left positionto 5% of the screen width
                        top: 14,
                        child: Container(
                          width: 85.51, // keep the width fixed
                          height: 110,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/HerWorld.jpeg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x339D9D9D),
                                blurRadius: 21.60,
                                offset: Offset(7, 9),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 33,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Laskar Pelangi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              height: 0.07,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 70,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Started date',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '                       ',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-05',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 86,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text(
                                    'Completed date ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-06',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
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
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.9, // set the width to 90% of the screen width
                  height: 138,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width *
                              0.9, // set the width to 90% of the screen width
                          height: 138,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x59BDBDBE),
                                blurRadius: 17.10,
                                offset: Offset(0, 10),
                                spreadRadius: 3,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.25, // set the left position to 5% of the screen width
                        top: 39,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Details',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF8BB0FA),
                              fontSize: 10,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w400,
                              height: 0.13,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.05, // set the left positionto 5% of the screen width
                        top: 14,
                        child: Container(
                          width: 85.51, // keep the width fixed
                          height: 110,
                          decoration: ShapeDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/HerWorld.jpeg"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            shadows: const [
                              BoxShadow(
                                color: Color(0x339D9D9D),
                                blurRadius: 21.60,
                                offset: Offset(7, 9),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 33,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          child: const Text(
                            'Laskar Pelangi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Futura',
                              fontWeight: FontWeight.w500,
                              height: 0.07,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 70,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Started date',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '                       ',
                                          style: TextStyle(
                                            color: Color(0xFF919191),
                                            fontSize: 10,
                                            fontFamily: 'Futura',
                                            fontWeight: FontWeight.w400,
                                            height: 0.13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-05',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: MediaQuery.of(context).size.width *
                            0.3, // set the left position to 30% of the screen width
                        top: 86,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.6, // set the width to 60% of the screen width
                          height: 13,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.6, // set the width to 60% of the screen width
                                  child: const Text(
                                    'Completed date ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w400,
                                      height: 0.13,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.55, // set the width to 60% of the screen width
                                  child: const Text(
                                    '2023-05-06',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: Color(0xFF919191),
                                      fontSize: 10,
                                      fontFamily: 'Futura',
                                      fontWeight: FontWeight.w500,
                                      height: 0.13,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}