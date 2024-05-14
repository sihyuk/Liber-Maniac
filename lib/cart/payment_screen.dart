import 'package:flutter/material.dart';
import 'package:liber_maniac/Screens/home_screen.dart';
import 'package:liber_maniac/cart/successfulpayment_screen.dart';

class PaymentPage extends StatelessWidget {
  final double totalPrice;

  const PaymentPage({Key? key, required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to the cart screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HomeScreen()), // Replace CartScreen() with your cart screen
              );
            },
            icon: const Icon(Icons.home, color: Colors.white),
          ),
        ],
        title: const Text(
          'Payment',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromRGBO(
            129, 8, 61, 1.0), // Set your desired app bar color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Total Amount:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                '\$$totalPrice',
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const SizedBox(height: 32),
              const Text(
                'Full Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Full Name'),
              ),
              const SizedBox(height: 32),
              const Text(
                'Card Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Card Number'),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Expiry Date'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'CVV'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Text(
                'Address',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Address Line 1'),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Address Line 2'),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'City'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Postal Code'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              const Text(
                'Email ID',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email ID'),
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SuccessPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                child: const Text(
                  'Pay Now',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
