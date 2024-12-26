import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen size variables
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 132, 18, 1),
                  Color.fromARGB(255, 37, 6, 1),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.14,
                left: screenWidth * 0.08,
              ),
              child: const Text(
                "Welcome Back!\nSign In to Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  shadows: [
                    Shadow(
                      offset: Offset(3.0, 2.0),
                      blurRadius: 6.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Login Form
          Padding(
            padding: EdgeInsets.only(top: screenHeight * 0.35),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75.0),
                  topRight: Radius.circular(75.0),
                ),
              ),
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.05),
                      // Username TextField
                      TextField(
                        onChanged: (value) {
                          // Handle username change
                        },
                        decoration: InputDecoration(
                          suffixIcon:
                              const Icon(Icons.check, color: Colors.grey),
                          label: Text(
                            "Username",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 132, 18, 1),
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      // Password TextField
                      TextField(
                        onChanged: (value) {
                          // Handle password change
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.visibility_off,
                              color: Colors.grey),
                          label: Text(
                            "Password",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 132, 18, 1),
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      // Forgot Password Button
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            // Handle forgot password
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color.fromARGB(255, 132, 18, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.04),
                      // Login Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 132, 18, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          minimumSize:
                              Size(screenWidth * 0.5, screenHeight * 0.05),
                        ),
                        onPressed: () {
                          // Handle login
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.045,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      // Sign Up Section
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Handle sign up
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Color.fromARGB(255, 132, 18, 1),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.08),
                      // Social Media Sign-in Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Google Button
                          IconButton(
                            icon: const FaIcon(FontAwesomeIcons.google,
                                color: Colors.red),
                            onPressed: () {
                              // Handle Google sign-in
                            },
                          ),
                          SizedBox(width: screenWidth * 0.005),
                          // Facebook Button
                          IconButton(
                            onPressed: () {
                              // Handle Facebook sign-in
                            },
                            icon: const Icon(Icons.facebook,
                                color: Colors.blue),
                          ),
                          SizedBox(width: screenWidth * 0.005),
                          // Twitter Button
                          IconButton(
                            onPressed: () {
                              // Handle Twitter sign-in
                            },
                            icon: const FaIcon(FontAwesomeIcons.twitter,
                                color: Colors.blue),
                          ),
                          SizedBox(width: screenWidth * 0.005),
                          // LinkedIn Button
                          IconButton(
                            onPressed: () {
                              // Handle LinkedIn sign-in
                            },
                            icon: const FaIcon(FontAwesomeIcons.linkedin,
                                color: Colors.blue),
                          ),
                          SizedBox(width: screenWidth * 0.005),
                          // Instagram Button
                          IconButton(
                            onPressed: () {
                              // Handle Instagram sign-in
                            },
                            icon: const FaIcon(FontAwesomeIcons.instagram,
                                color: Colors.blue),
                          ),
                          SizedBox(width: screenWidth * 0.005),
                          // Github Button
                          IconButton(
                            onPressed: () {
                              // Handle Github sign-in
                            },
                            icon: const FaIcon(FontAwesomeIcons.github,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      const Text("Sign in with Social Media",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
