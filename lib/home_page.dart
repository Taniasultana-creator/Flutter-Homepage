import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),

      appBar: AppBar(
        title: Text(
          "Homepage",
          style: GoogleFonts.lobster(
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF3F51B5),
        foregroundColor: Colors.white,

        leading: Icon(
          Icons.home_rounded,
          size: 25,
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
            tooltip: "Search",
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_rounded),
            tooltip: "Profile",
          ),
        ],
      ),

      body: Center(
        child: Text(
          "Hello welcome to our project",
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(
            textStyle: TextStyle(
              fontSize: 28,
              color: Color(0xFF1F2937),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFFF9800),
        foregroundColor: Colors.white,
        hoverColor: Color(0xFFFFB74D),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),

        tooltip: "Add",

        child: Icon(
          Icons.add_rounded,
          size: 30,
        ),
      ),
    );
  }

}