import 'package:flutter/material.dart';
import 'package:liber_maniac/Screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:liber_maniac/cart/cart_provider.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => CartProvider()), // Example provider setup
        // Other providers if needed
      ],
      child: const MyApp(),
    ),
  );
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
