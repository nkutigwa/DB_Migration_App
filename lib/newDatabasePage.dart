// NewDatabasePage.dart
import 'package:flutter/material.dart';

class NewDatabasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Add logic to fetch and display the schema, columns, and rows of the new database
    return Scaffold(
      appBar: AppBar(
        title: Text("New Database"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "New Database Schema",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Add more widgets to display the details of the new database
          ],
        ),
      ),
    );
  }
}
