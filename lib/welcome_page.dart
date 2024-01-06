import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Color(0xFFFFFDFF),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(),
              _startButton(context),
            ],
          ),
        ),
      ),
    );
  }

  _header() {
    return const Column(
      children: [
        Text(
          "DB Status App",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text("Explore the app features and stay connected!"),
      ],
    );
  }

  _startButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        // Navigate to the login page when start button is pressed
        Navigator.pushNamed(context, '/login');
      },
      minWidth: double.infinity,
      height: 50,
      color: Colors.blue, // Set the same color as the background
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Text(
        "Get Started",
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
    );
  }
}
