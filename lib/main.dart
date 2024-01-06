import 'package:flutter/material.dart';
import 'package:database_migration_app/login_page.dart';
import 'package:database_migration_app/signup_page.dart';
import 'package:database_migration_app/welcome_page.dart';
import 'package:database_migration_app/home_page.dart';
import 'package:database_migration_app/newDatabasePage.dart';
import 'package:database_migration_app/oldDatabasePage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome', // Change this to the initial route of your app
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/home': (context) => HomePage(), // Add this route for the home page
        // Add more routes as needed
      },
    );
  }
}
