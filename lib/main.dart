import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Todo List'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'My Todo List',
            //   style: TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/2dme.png'), // Add your image here
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome, Josh', // Replace 'Your Name' with your actual name
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 10.0), // Add spacing between name and button

            // Improved Button with Customization Options:
            ElevatedButton(
              onPressed: () {
                // Handle button press action (navigate, etc.)
                print(
                    'Enter button pressed'); // Example action (remove for actual navigation)
              },
              child: Text(
                'Enter',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white), // Adjust font size and color
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Set button color
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Add rounded corners
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
