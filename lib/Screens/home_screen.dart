import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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
              onPressed: signUserOut,
              icon: const Icon(Icons.logout, color: Colors.white))
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
                // Navigate to home screen or perform any other action
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {
                // Navigate to search screen or perform any other action
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {
                // Navigate to notifications screen or perform any other action
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
