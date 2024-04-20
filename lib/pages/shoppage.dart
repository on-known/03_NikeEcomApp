import 'package:ecommerce_app_13apr2024/models/cart.dart';
import 'package:ecommerce_app_13apr2024/models/shoes.dart'; // Importing the Shoes model
import 'package:ecommerce_app_13apr2024/shoestiles.dart';
import 'package:flutter/material.dart'; // Importing Flutter material package
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key}); // Constructor for ShopPage widget

  @override
  Widget build(BuildContext context) {
    return Consumer<cart>(
      builder: (context, value, child) => Scaffold(
        // Scaffold widget for the page layout
        body: Column(
          // Column layout for vertical arrangement
          children: [
            // Search bar
            Container(
              padding:
                  const EdgeInsets.all(12), // Setting padding for the container
              decoration: BoxDecoration(
                color: Colors
                    .grey[100], // Setting background color for the container
              ),
              child: const Row(
                // Row layout for horizontal arrangement
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Aligning children evenly horizontally
                children: [
                  Text("Search"), // Search text
                  Icon(
                    Icons.search, // Search icon
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 25), // Setting vertical padding
              child: Text(
                  "Just Do App: Step into Greatness with Nike Shoes"), // App title text
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 25.0), // Setting horizontal padding
              child: Row(
                // Row layout for horizontal arrangement
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Aligning children evenly horizontally
                crossAxisAlignment: CrossAxisAlignment
                    .end, // Aligning children at the bottom vertically
                children: [
                  Text(
                    "Hot Picks🔥", // Hot picks title text
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "See all", // "See all" text
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Expanded(
              // Expanded widget to take remaining space
              child: ListView.builder(
                  // ListView.builder for horizontal scrolling list
                  itemCount: value.getShoeList().length, // Setting item count
                  scrollDirection: Axis.horizontal, // Setting scroll direction
                  itemBuilder: (context, index) {
                    // Creating shoes
                    Shoes shoes = value.getShoeList()[index];

                    return ShoesTiles(
                      // Displaying ShoesTiles widget
                      shoes: shoes, // Passing shoes data to ShoesTiles
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
