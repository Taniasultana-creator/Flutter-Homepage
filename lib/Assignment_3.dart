import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: Colors.blueGrey.shade700, 
        foregroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),

      drawer: Drawer(
        backgroundColor: Colors.white, 
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey.shade700),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.blueGrey.shade700, size: 35),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home, color: Colors.blueGrey.shade700),
              title: Text("HomePage"),
              hoverColor: Colors.blueGrey.shade50,
              onTap: () {},
            ),
            Divider(height: 1),
            ListTile(
              leading: Icon(Icons.contact_page, color: Colors.blueGrey.shade700),
              title: Text("Contact"),
              hoverColor: Colors.blueGrey.shade50,
              onTap: () {},
            ),
            Divider(height: 1),

            Spacer(),
            ListTile(
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.person, color: Colors.blueGrey.shade700)),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout, color: Colors.redAccent)),
              title: Text("Profile"),
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade600,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: Colors.blueGrey.shade200),
                  fixedSize: Size(130, 40),
                  elevation: 2,
                  shadowColor: Colors.grey.shade300,
                ),
                child: Text("Text Button"),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade600,
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.blueGrey.shade200),
                fixedSize: Size(150, 40),
                elevation: 2,
              ),
              child: Text("Elevated Button"),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.blueGrey.shade700,
                side: BorderSide(color: Colors.blueGrey.shade400),
              ),
              child: Text("Outlined Button"),
            ),
            // IconButton(onPressed: () {}, icon: Icon(Icons.login)),
            
            // Standard website-style hero card (only this part changed)
            Container(
              width: 280,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blueGrey.shade400, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey.withOpacity(0.15),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.waving_hand, size: 36, color: Colors.blueGrey.shade600),
                  SizedBox(height: 10),
                  Text(
                    "Welcome Back!",
                    style: TextStyle(
                      color: Colors.blueGrey.shade800,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Explore your dashboard!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey.shade400,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey.shade600,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Get Started"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey.shade700,
        foregroundColor: Colors.white,
        hoverColor: Colors.blueGrey.shade500,
        shape: BeveledRectangleBorder(),
        tooltip: "Add",
        child: Icon(Icons.add),
      ),
    );
  }
}