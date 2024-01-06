import 'package:flutter/material.dart';
import 'package:database_migration_app/oldDatabasePage.dart';
import 'package:database_migration_app/newDatabasePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DB Status App"),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to the Home Page!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add the logic to navigate to the schema comparison page
                  // For example, Navigator.pushNamed(context, '/schemaComparison');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.blue,
                ),
                child: Text(
                  "Schema Comparison",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add the logic to navigate to the data comparison page
                  // For example, Navigator.pushNamed(context, '/dataComparison');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.green,
                ),
                child: Text(
                  "Data Comparison",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add the logic to navigate to another feature
                  // For example, Navigator.pushNamed(context, '/anotherFeature');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.orange,
                ),
                child: Text(
                  "Another Feature",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storage),
              label: 'Old Database',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storage),
              label: 'New Database',
            ),
          ],
          onTap: (index) {
            switch (index) {
              case 0:
                // Handle Home tap
                break;
              case 1:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OldDatabasePage()),
                );
                break;
              case 2:
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewDatabasePage()),
                );
                break;
            }
          },
        ),
      ),
    );
  }
}
