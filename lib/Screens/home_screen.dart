import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liber_maniac/Screens/categories.dart';
import 'package:liber_maniac/Screens/library_screen.dart';
import 'package:liber_maniac/cart/cart_screen.dart';
import 'package:liber_maniac/Screens/landing_page.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final user = FirebaseAuth.instance.currentUser;
  //sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

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
                        const CartScreen()), // Replace CartScreen() with your cart screen
              );
            },
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
          IconButton(
              onPressed: signUserOut,
              icon: const Icon(Icons.logout, color: Colors.white)),
        ],
        title: const Text(
          'Liber Maniac',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color.fromRGBO(129, 8, 61, 1.0),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(129, 8, 61, 1.0),
              ),
              child: Text(
                'Welcome to Liber Maniac',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text('Categories'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CategoriesList()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.library_books),
              title: const Text('Library'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LibraryPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                // Navigate to profile screen or perform any other action
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sign Out'),
              onTap: () => signUserOut(),
            ),
          ],
        ),
      ),
      body: const Center(
        child: LandingPage(),
      ),
    );
  }
}
