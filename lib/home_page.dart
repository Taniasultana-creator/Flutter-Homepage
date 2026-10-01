import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showMessage(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,

      appBar: AppBar(
        title: Text("Homepage"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        leading: Icon(
          Icons.home,
          size: 20,
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Search clicked")),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              showMessage(context, "Profile", "This is your profile page.");
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello, welcome to our project",
              style: GoogleFonts.lobster(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Choose an option below",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                showMessage(
                  context,
                  "About",
                  "This is a simple Flutter project made for our class assignment.",
                );
              },
              child: Text("About"),
            ),

            ElevatedButton(
              onPressed: () {
                showMessage(
                  context,
                  "Services",
                  "We are learning how to build mobile and web apps with Flutter.",
                );
              },
              child: Text("Services"),
            ),

            ElevatedButton(
              onPressed: () {
                showMessage(
                  context,
                  "Contact",
                  "Email: example@gmail.com",
                );
              },
              child: Text("Contact"),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.favorite, color: Colors.pink, size: 30),
                SizedBox(width: 20),
                Icon(Icons.star, color: Colors.amber, size: 30),
                SizedBox(width: 20),
                Icon(Icons.thumb_up, color: Colors.lightGreen, size: 30),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Add clicked")),
          );
        },
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        hoverColor: Colors.lightGreen,
        shape: BeveledRectangleBorder(),
        tooltip: "Add",
        child: Icon(Icons.add),
      ),
    );
  }
}