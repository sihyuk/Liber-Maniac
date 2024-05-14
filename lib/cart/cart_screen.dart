import 'package:flutter/material.dart';
import 'package:liber_maniac/cart/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Access the CartProvider
    final cartProvider = Provider.of<CartProvider>(context);
    // Access cartItems list
    final cartItems = cartProvider.cartItems;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          var item = cartItems[index];
          return ListTile(
            title: Text(item.title),
            subtitle:
                Text('Price: \$${item.price} | Quantity: ${item.quantity}'),
            leading: Image.asset(item.imagePath),
          );
        },
      ),
    );
  }
}
