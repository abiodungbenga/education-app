import 'package:flutter/material.dart';

import '../authentication/login/login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.edit_note_rounded,
              size: 120,
              color: Colors.deepPurpleAccent,
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Online Learning Platform',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurpleAccent,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Welcome to our online learning platform! Here, you can access a wide range of courses and resources to enhance your skills and knowledge.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ),

          SizedBox(height: 15),
          TextButton(
            onPressed: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
    ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.deepPurpleAccent,
              ),
              padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            child: Text(
              "Start Learning",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
