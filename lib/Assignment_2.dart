import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F0),

      appBar: AppBar(
        title: Text(
          "My Home",
          style: GoogleFonts.lobster(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF8E8E93),
        foregroundColor: Colors.white,
        elevation: 5,

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            tooltip: "Search",
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            tooltip: "Profile",
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF5F5F66),
              ),
              accountName: const Text(
                "Guest User",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: const Text("guest@mail.com"),

              currentAccountPicture: const Icon(
                Icons.person,
                size: 40,
                color: Colors.white,
              ),
            ),

            ListTile(
              leading: const Icon(
                Icons.home,
                color: Color(0xFF8E8E93),
              ),
              title: const Text("Home"),
              hoverColor: const Color(0xFFE4E4E7),
              onTap: () {},
            ),

            const Divider(),

            ListTile(
              leading: const Icon(
                Icons.contact_page,
                color: Color(0xFF8E8E93),
              ),
              title: const Text("Contact Us"),
              hoverColor: const Color(0xFFE4E4E7),
              onTap: () {},
            ),

            const Divider(),

            const Spacer(),

            ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Color(0xFF8E8E93),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                ),
              ),
              title: const Text("My Profile"),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Hello There!",
              style: GoogleFonts.lobster(
                fontSize: 40,
                color: const Color(0xFF5F5F66),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Pick something below",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFF9A9AA0),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF5F5F66),
                      foregroundColor: Colors.white,
                      side: const BorderSide(
                        color: Color(0xFFBDBDC2),
                        width: 2,
                      ),
                      fixedSize: const Size(150, 80),
                      elevation: 5,
                      shadowColor: const Color(0xFFBDBDC2),
                    ),
                    child: const Text(
                      "Tap Me",
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8E8E93),
                      foregroundColor: Colors.white,
                      side: const BorderSide(
                        color: Color(0xFFBDBDC2),
                        width: 2,
                      ),
                      fixedSize: const Size(150, 80),
                      elevation: 5,
                      shadowColor: const Color(0xFFBDBDC2),
                    ),
                    child: const Text(
                      "Go Ahead",
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF6E6E75),
                    side: const BorderSide(
                      color: Color(0xFF8E8E93),
                      width: 2,
                    ),
                  ),
                  child: const Text(
                    "Outline Me",
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.login),
                    iconSize: 32,
                    color: const Color(0xFF8E8E93),
                    tooltip: "Login",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF5F5F66),
        foregroundColor: Colors.white,
        hoverColor: const Color(0xFFBDBDC2),

        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        tooltip: "Add",

        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}