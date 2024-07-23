import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libraloan/book_detail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:http/http.dart' as http;
import 'username_provider.dart';
import 'models/username_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late UsernameModel _usernameModel;
  String _username = '';
  String _email = '';

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  void _showSaveDialog(BuildContext context, String title,
      TextEditingController controller, VoidCallback onSave) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.noHeader,
      animType: AnimType.bottomSlide,
      title: title,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Enter your $title',
                border: const OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: onSave,
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    ).show();
  }

  void _showSaveUsernameDialog(BuildContext context) {
    final usernameModel = UsernameProvider.of(context);
    TextEditingController usernameController = TextEditingController();
    _showSaveDialog(context, 'username', usernameController, () {
      setState(() {
        _username = usernameController.text;
      });
      usernameModel?.updateUsername(usernameController.text);
      _updateUsernameApi(usernameController.text);
      _saveProfile();
      Navigator.of(context).pop(); // Nutup dialog
    });
  }

  void _showSaveEmailDialog(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    _showSaveDialog(context, 'email', emailController, () {
      setState(() {
        _email = emailController.text;
      });
      _updateEmailApi(emailController.text);
      _saveProfile();
      Navigator.of(context).pop(); // Nutup Dialog
    });
  }

  Future<void> _updateUsernameApi(String newUsername) async {
    try {
      // Define the API endpoint
      final url = Uri.parse('http://127.0.0.1:8000/api/update-username');

      // Send the PUT request to the server
      final response = await http.put(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'username': newUsername}),
      );

      // Check the response status code
      if (response.statusCode == 200) {
        print('Username updated successfully');
      } else {
        print('Error updating username: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any exceptions that occur during the HTTP request
      print('An error occurred: $e');
    }
  }

  Future<void> _updateEmailApi(String newEmail) async {
  try {
    // Define the API endpoint
    final url = Uri.parse('http://127.0.0.1:8000/api/update-email');

    // Send the PUT request to the server
    final response = await http.put(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'email': newEmail}),
    );

    // Check the response status code
    if (response.statusCode == 200) {
      print('Email updated successfully');
    } else {
      print('Error updating email: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any exceptions that occur during the HTTP request
    print('An error occurred: $e');
  }
}
  Future<void> _loadProfile() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _username = prefs.getString('username') ?? '';
      _email = prefs.getString('email') ?? '';
    });
  }

  Future<void> _saveProfile() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', _username);
    await prefs.setString('email', _email);
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    _usernameModel = UsernameProvider.of(context)!;
    final usernameModel = UsernameProvider.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF5F8FE),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.fromLTRB(27, 70, 27, 260),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                  screenWidth * 0.01,
                  0,
                  screenWidth * 0.01,
                  screenHeight * 0.05,
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 218.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                            )),
                        Text(
                          'Profile',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            decoration: TextDecoration.none,
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
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 31),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFFFFFF),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x59BEBEBE),
                      offset: Offset(0, 10),
                      blurRadius: 8.5500001907,
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(15, 11, 0, 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://awsimages.detik.net.id/community/media/visual/2022/11/20/parti-kejora-bayi-orang-utan-di-serulingmas-zoo-banjarnegara-minggu-20112022-6_43.jpeg?w=650",
                            ),
                            fit: BoxFit.cover,
                          ),
                          shape: CircleBorder(),
                        ),
                        width: 90,
                        height: 90,
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(10, 21, 0, 21),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                              child: Text(
                                _usernameModel.username,
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: const Color(0xFF000000),
                                ),
                              ),
                            ),
                            Text(
                              _email,
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: const Color(0xFF8C8989),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFFFFFF),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x59BEBEBE),
                      offset: Offset(0, 10),
                      blurRadius: 8.5500001907,
                    ),
                  ],
                ),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(14, 20, 9, 22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(1, 0, 4, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 13, 0),
                                  child: const SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Icon(
                                      Icons.person,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Text(
                                    "username",
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                _showSaveUsernameDialog(context);
                              },
                              child: const Icon(Icons.edit),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 4, 18.5),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0x38000000),
                          ),
                          child: const SizedBox(
                            width: 349,
                            height: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(1, 0, 4, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 13, 0),
                                  child: const SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Icon(
                                      Icons.alternate_email_outlined,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 1, 0, 4),
                                  child: Text(
                                    "email",
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                _showSaveEmailDialog(context);
                              },
                              child: const Icon(Icons.edit),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 4, 15.5),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0x38000000),
                          ),
                          child: const SizedBox(
                            width: 349,
                            height: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 13, 0),
                                  child: const SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: Icon(
                                      Icons.alternate_email_outlined,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 1, 0, 4),
                                  child: Text(
                                    'Password',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      decoration: TextDecoration.none,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: const Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '*******',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: const Color(0xFF000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //popular
              SizedBox(
                width: screenWidth - 40,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saved',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (int i = 1; i < 10; i++)
                      Container(
                        // width: 378,
                        // height: 208.59,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (int i = 1; i < 4; i++)
                              GestureDetector(
                                onTap: () {
                                  // Aksi yang diinginkan saat box ditekan
                                  print("Box ditekan!");
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return const BookDetail();
                                  }));
                                },
                                child: SizedBox(
                                  width: 120.67,
                                  height: 208.59,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 120.67,
                                          height: 174.57,
                                          decoration: ShapeDecoration(
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                'assets/images/1.jpeg',
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        left: 0,
                                        top: 180.48,
                                        child: SizedBox(
                                          width: 120.67,
                                          height: 28.11,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Laskar Pelangi',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Futura',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2,
                                                ),
                                              ),
                                              Text(
                                                'Andrea Hirata',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF919191),
                                                  fontSize: 12,
                                                  fontFamily: 'Futura',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 5.83,
                                        top: 153,
                                        child: SizedBox(
                                          width: 37.87,
                                          height: 16.17,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 37.87,
                                                  height: 16.17,
                                                  decoration: ShapeDecoration(
                                                    color: Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        2)),
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                left: 2,
                                                top: 1,
                                                child: Icon(
                                                  CupertinoIcons.star_fill,
                                                  color: Colors.yellow,
                                                  size: 12,
                                                ),
                                              ),
                                              const Positioned(
                                                left: 15.70,
                                                top: 3,
                                                child: SizedBox(
                                                  width: 20.32,
                                                  height: 15.22,
                                                  child: Text(
                                                    '4.0',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 8,
                                                      fontFamily: 'Futura',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 0,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
