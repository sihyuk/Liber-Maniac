import 'package:flutter/material.dart';
import 'package:liber_maniac/Screens/home_screen.dart';
import 'package:liber_maniac/cart/cart_provider.dart';
import 'package:provider/provider.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the CartProvider
    final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Thank You',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromRGBO(129, 8, 61, 1.0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/images/check.png',
              height: 150,
              width: 150,
            ),
            const SizedBox(height: 50),
            const Text(
              'Thank you for your purchase!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                cartProvider.clearCart();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
              },
              child: const Text(
                'Go To Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
