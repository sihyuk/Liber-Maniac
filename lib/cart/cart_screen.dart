import 'package:flutter/material.dart';
import 'package:liber_maniac/Screens/home_screen.dart';
import 'package:liber_maniac/cart/cart_provider.dart';
import 'package:liber_maniac/cart/payment_screen.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the CartProvider
    final cartProvider = Provider.of<CartProvider>(context);
    // Access cartItems list
    final cartItems = cartProvider.cartItems;

    // Calculate the total price of all items in the cart
    double totalPrice = cartItems.fold(
        0,
        (previousValue, element) =>
            previousValue + element.price * element.quantity);

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
          backgroundColor: const Color.fromRGBO(129, 8, 61, 1.0),
          title: const Text(
            'Cart',
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/images/empty-cart.png', // Replace with your image path
                    height: 200,
                    width: 200,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'No items in cart',
                    style: TextStyle(fontSize: 32),
                  ),
                ],
              ),
            )
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                var item = cartItems[index];
                // Calculate the total price for the item
                double totalPriceForItem = item.price * item.quantity;
                return Dismissible(
                  key: Key(item.title), // Unique key for each item
                  onDismissed: (direction) {
                    // Remove the item from the cart when dismissed
                    cartProvider.removeFromCart(index);
                  },
                  background: Container(
                    color: const Color.fromARGB(255, 134, 43, 82),
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  child: Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 4,
                    child: ListTile(
                      title: Text(item.title),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Price: \$${item.price}'),
                          Text('Quantity: ${item.quantity}'),
                          Text(
                            'Total: \$${totalPriceForItem.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      leading: Image.asset(item.imagePath),
                    ),
                  ),
                );
              },
            ),
      bottomNavigationBar: cartItems.isEmpty
          ? null
          : Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total: \$${totalPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PaymentPage(totalPrice: totalPrice),
                        ),
                      );
                    },
                    child: const Text(
                      'Pay',
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
