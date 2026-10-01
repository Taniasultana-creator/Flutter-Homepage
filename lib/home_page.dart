import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // EXTRA: button e click korle ekta box e lekha dekhabe
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
      // CHANGED: background color
      backgroundColor: Colors.grey.shade900,

      appBar: AppBar(
        title: Text("Homepage"),
        // CHANGED: AppBar color
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        leading: Icon(
          Icons.home,
          size: 20,
        ),
        actions: [
          IconButton(
            // EXTRA: click korle message ashe
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Search clicked")),
              );
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            // EXTRA: click korle message ashe
            onPressed: () {
              showMessage(context, "Profile", "This is your profile page.");
            },
            icon: Icon(Icons.person),
          ),
        ],
      ), // AppBar

      // backgroundColor: Colors.orange,

      // EXTRA: Center + Column
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // miss er original Text (shudhu color change)
            Text(
              "Hello, welcome to our project",
              style: GoogleFonts.lobster(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ), // Text

            SizedBox(height: 10),

            // EXTRA: chhoto description
            Text(
              "Choose an option below",
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            SizedBox(height: 20),

            // EXTRA: About button
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

            // EXTRA: Services button
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

            // EXTRA: Contact button
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

            // EXTRA: Row er moddhe 3ta icon
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
        // EXTRA: click korle message ashe
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Add clicked")),
          );
        },
        // CHANGED: color
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        hoverColor: Colors.lightGreen,
        shape: BeveledRectangleBorder(),
        tooltip: "Add",
        child: Icon(Icons.add),
      ), // FloatingActionButton
    ); // Scaffold
  }
}