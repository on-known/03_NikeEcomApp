import 'package:ecommerce_app_13apr2024/pages/homepage.dart'; // Importing the HomePage widget
import 'package:flutter/material.dart'; // Importing Flutter material package

class IntroPage extends StatelessWidget {
  const IntroPage({super.key}); // Constructor for IntroPage widget

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold widget for the page layout
      backgroundColor: Colors.grey[300], // Setting background color
      body: Center( // Centering the content vertically and horizontally
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25), // Setting horizontal padding
          child: Column( // Column layout for vertical arrangement
            mainAxisAlignment: MainAxisAlignment.center, // Aligning children in the center vertically
            children: [
              Image.asset(
                'assets/nike.png', // Image asset for Nike logo
                // height: ,
                // width: 100,
              ),
              const Text(
                "Just Do it", // Nike slogan text
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Unleash Your Style: Limited Edition Sneaker Sale", // Sale information text
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center, // Center aligning text
              ),
              const SizedBox(
                height: 24,
              ),
              GestureDetector( // GestureDetector for detecting tap events
                onTap: () {
                  Navigator.push( // Navigating to HomePage on tap
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(), // Creating HomePage widget instance
                    ),
                  );
                },
                child: Container( // Container for the "Start Now" button
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 25, left: 100, right: 100), // Setting padding for the button
                  decoration: BoxDecoration(
                      color: Colors.grey[900], // Button background color
                      borderRadius: BorderRadius.circular(12.0)), // Button border radius
                  child: const Text(
                    "Start Now", // Button text
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

