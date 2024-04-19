import 'package:ecommerce_app_13apr2024/component/bottomnavigationbar.dart'; // Importing MyBottomNavigationBar widget
import 'package:ecommerce_app_13apr2024/pages/cartpage.dart'; // Importing CartPage widget
import 'package:ecommerce_app_13apr2024/pages/shoppage.dart'; // Importing ShopPage widget
import 'package:flutter/material.dart'; // Importing Flutter material package

class HomePage extends StatefulWidget {
  const HomePage({super.key}); // Constructor for HomePage widget

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Index to track the selected tab

  // Method to update the selected index
  void navigationBottomBar(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  // List of pages to be displayed in the bottom navigation bar
  final List<Widget> _pages = [
    const ShopPage(), // ShopPage
    const CartPage(), // CartPage
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        // Bottom navigation bar widget
        onTabChange: (index) {
          navigationBottomBar(index);
        },
      ),
      body: _pages[_selectedIndex], // Body to display the selected page
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent app bar background
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context)
                    .openDrawer(); // Open drawer on menu icon tap
              },
              icon: const Icon(Icons.menu), // Menu icon
            );
          },
        ),
      ),
      drawer: Drawer(
        // Drawer widget for side navigation
        backgroundColor: Colors.grey[900], // Setting drawer background color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "assets/nike.png", // Nike logo in drawer header
                    color: Colors.white, // Setting image color
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Divider(
                    color: Colors.grey[800], // Divider color
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.home, // Home icon
                      color: Colors.white, // Icon color
                    ),
                    title: Text(
                      "Home", // Home text
                      style: TextStyle(color: Colors.white), // Text color
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.info, // Info icon
                      color: Colors.white, // Icon color
                    ),
                    title: Text(
                      "About", // About text
                      style: TextStyle(color: Colors.white), // Text color
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 25,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.logout, // Logout icon
                  color: Colors.white, // Icon color
                ),
                title: Text(
                  "Logout", // Logout text
                  style: TextStyle(color: Colors.white), // Text color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
