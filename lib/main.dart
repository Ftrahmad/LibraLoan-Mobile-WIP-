import 'package:flutter/material.dart';
import 'package:libraloan/categories.dart';
import 'package:libraloan/navbar/bottom_bar.dart';
import 'package:libraloan/popular.dart';
import 'package:libraloan/profile.dart';
import 'package:libraloan/activity_request.dart';
import 'package:libraloan/book_detail.dart';
import 'package:libraloan/homepage.dart';
import 'package:libraloan/saved_books.dart';
import 'package:libraloan/sign_in.dart';
import 'package:libraloan/sign_up.dart';
import 'package:libraloan/thank_you.dart';
import 'package:libraloan/welcome.dart';
import 'username_provider.dart';
import 'models/username_model.dart';


void main() {
  final usernameModel = UsernameModel();
  runApp(
    UsernameProvider(
      usernameModel: usernameModel,
      child: const RunBang(),
    ),
  );
}

class RunBang extends StatelessWidget {
  const RunBang({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      routes: {
        // "/": (context) => HomePage(),
        "/": (context) => const SplashScreen(),
        "/homepage": (context) => const HomePage(),
        "/profile": (context) => const Profile(),
        "/activityrequest": (context) => const MyActivityRequest(),
        "/bookdetail": (context) => const BookDetail(),
        // "/activitycontinue": (context) => MyActivityContinue(),
        "/savedbooks": (context) => const SavedBooks(),
        "/signup": (context) => SignUpScreen(),
        "/signin": (context) => const SignInScreen(),
        "/categories": (context) => const Categories(),
        "/popular": (context) => const Popular(),
        "/thank": (context) => const ThankYouScreen(),
        "/bottombar": (context) => const BottomBar(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a long running operation to fetch data
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the next screen after 3 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Welcome()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFDEE8FF),
              Color(0xFFF1F6FF),
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            width: 200, // Adjust the width as needed
          ),
        ),
      ),
    );
  }
}
