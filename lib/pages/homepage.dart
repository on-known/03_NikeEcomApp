import 'package:ecommerce_app_13apr2024/component/bottomnavigationbar.dart';
import 'package:ecommerce_app_13apr2024/pages/cartpage.dart';
import 'package:ecommerce_app_13apr2024/pages/shoppage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigationBottomBar(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  final List<Widget> _pages = [
//shop page

    const ShopPage(),

//cart page

    const CartPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavigationBar(
        onTabChange: (index) {
          navigationBottomBar(index);
        },
      ),
      body: _pages[_selectedIndex],
    );
  }
}
