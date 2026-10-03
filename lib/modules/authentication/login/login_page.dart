import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.deepPurpleAccent,),
                Spacer(),
                Text("Login Page", style: TextStyle(
                  fontSize: 18,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w600,
                ),),
              ],
            ),
          ),
          Text(
            "Learning App",
            style: TextStyle(
              fontSize: 20,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Enter your email and password to login",
              style: TextStyle(
                fontSize: 18,
                color: Colors.deepPurpleAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
