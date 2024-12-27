import 'package:flutter/material.dart';
import 'package:login_signup_screens/login.dart';
import 'package:login_signup_screens/splash_screen.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const LoginScreen(), // Replace with your home screen
      },
    );
  }
}
