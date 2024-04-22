import 'package:ecommerce_app_13apr2024/models/shoes.dart'; // Importing the Shoes model
import 'package:flutter/material.dart'; // Importing Flutter material package

class ShoesTiles extends StatelessWidget {
  const ShoesTiles(
      {super.key,
      required this.shoes,
      required this.onPressed}); // Constructor for ShoesTiles widget

  final Shoes shoes;
  final VoidCallback onPressed; // Instance of Shoes class to hold shoes data

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25,
      ),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100], // Setting background color for the container
        borderRadius: BorderRadius.circular(
            12), // Setting border radius for the container
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Image path
          SizedBox(
            height: MediaQuery.of(context).size.height *
                .35, // Setting height for the image container
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                  12), // Setting border radius for the image
              child: Image.asset(
                shoes.imagePath, // Loading image from asset
                fit: BoxFit.cover, // Fitting the image within the container
              ),
            ),
          ),
          // Description
          Text(shoes.description), // Displaying shoe description

          // Price + details
          Padding(
            padding: const EdgeInsets.only(
              left: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoes.name, // Displaying shoe name
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5, top: 5),
                      child: Text(
                        shoes.price, // Displaying shoe price
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: onPressed,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors
                          .black, // Setting background color for the container
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(
                          12,
                        ),
                      ),
                    ),
                    child: const Icon(
                      Icons.add, // Add icon
                      color: Colors.white, // Icon color
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
