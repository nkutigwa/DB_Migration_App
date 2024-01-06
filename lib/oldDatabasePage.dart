import 'package:flutter/material.dart';

class OldDatabasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Add logic to fetch and display the schema, columns, and rows of the old database
    return Scaffold(
      appBar: AppBar(
        title: Text("Old Database"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Old Database Schema",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Add more widgets to display the details of the old database
          ],
        ),
      ),
    );
  }
}
