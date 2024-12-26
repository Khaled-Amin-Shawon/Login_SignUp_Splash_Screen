import 'package:flutter/material.dart';
import 'dart:async';
import 'package:login_signup_screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = false; // Flag to indicate loading state

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = true; // Set loading state to true before navigation
      });
      Timer(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Use Scaffold for full-screen background
      body: Container(
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
        child: Center(
          child: Column( // Center content vertically
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 20.0), // Add spacing
              const Text(
                'EASY SHOP',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2.0,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 5.0,
                      offset: Offset(0, 2.0),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0), // Add spacing
              _isLoading // Conditionally show progress indicator
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : Text(
                      'Loading...',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7), // Adjust opacity
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}