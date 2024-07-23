import 'package:flutter/material.dart';
import 'package:libraloan/sign_in.dart';
import 'package:libraloan/sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset:
                          const Offset(-75, 0), // Move book.png slightly to the left
                      child: Image.asset(
                        'assets/images/book.png',
                        width: 130, // Adjust the width as needed
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Add some spacing between the images
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset:
                          const Offset(75, 0), // Move book3.png slightly to the right
                      child: Image.asset(
                        'assets/images/book3.png',
                        width: 130, // Adjust the width as needed
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Add some spacing between the images
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.translate(
                      offset:
                          const Offset(-75, 0), // Move book2.png slightly to the left
                      child: Image.asset(
                        'assets/images/book2.png',
                        width: 130, // Adjust the width as needed
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40), // Add spacing before the text
                const Text(
                  'Join us today !!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10), // Add some spacing between the texts
                const Text(
                  'Makes it easier to borrow books',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 40), // Add spacing before the buttons
                SizedBox(
                  width: double.infinity, // Set the width for the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the sign-up screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xFFA8C2F6), // Text color
                    ),
                    child: const Text('Get Started'),
                  ),
                ),
                const SizedBox(height: 10), // Add some spacing between the buttons
                SizedBox(
                  width: double.infinity, // Set the width for the button
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigate to the sign-in screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignInScreen()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFFA8C2F6),
                      side:
                          const BorderSide(color: Color(0xFFA8C2F6)), // Border color
                    ),
                    child: const Text('Sign In'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
