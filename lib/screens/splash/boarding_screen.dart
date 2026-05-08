import 'package:flutter/material.dart';
import '../auth/login_page.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'images/boarding.png',
              fit: BoxFit.cover,
            ),
          ),

          // Overlay putih transparan agar teks jelas
          Container(
            color: Colors.white.withOpacity(0.15),
          ),

          // Content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60),

                  // Title
                  const Text(
                    'MAKE YOUR\nHOME BEAUTIFUL',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.1,
                      letterSpacing: 1,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Description
                  const Text(
                    'The best simple place where you\n'
                    'discover most wonderful furnitures and\n'
                    'make your home beautiful',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      height: 1.6,
                    ),
                  ),

                  const Spacer(),

                  // Button
                  SizedBox(
                    width: double.infinity,
                    height: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF242424),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}