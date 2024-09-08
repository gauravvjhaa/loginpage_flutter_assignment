import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Limited',
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen width to determine layout
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 800) {
              // Large screen layout
              return Row(
                children: [
                  // Left Side: Image with Text
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/boatimage.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        color: Colors.black.withOpacity(0.5), // Overlay for readability
                        child: const Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Explore Demo Limited's Premier Logistics and Freight Services",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Right Side: Login Form
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      color: Colors.white,
                      child: LoginForm(),
                    ),
                  ),
                ],
              );
            } else {
              // Small screen layout (mobile)
              return SingleChildScrollView(
                child: Column(
                  children: [
                    // Top: Image with Text
                    Container(
                      height: 250, // Set a height for the image on mobile
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/boatimage.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        color: Colors.black.withOpacity(0.5), // Overlay for readability
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Explore Demo Limited's Premier Logistics and Freight Services",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Bottom: Login Form
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      color: Colors.white,
                      child: LoginForm(),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Column(
            children: [
              Image.asset(
                'images/demologo.jpg',
                height: 50,
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "We are glad to see you",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 40),
        const TextField(
          decoration: InputDecoration(
            labelText: "Username",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Add login functionality here
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text("LOGIN"),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            // Add forgot password functionality here
          },
          child: const Text("Forgot Password?"),
        ),
      ],
    );
  }
}
