import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addToCart(CartItem item) {
    _cartItems.add(item);
    notifyListeners();
  }

  // Add other methods to manipulate cartItems as needed
}

// Define CartItem class
class CartItem {
  final String title;
  final String imagePath;
  final double price;
  final int quantity;

  CartItem({
    required this.title,
    required this.imagePath,
    required this.price,
    required this.quantity,
  });
}
