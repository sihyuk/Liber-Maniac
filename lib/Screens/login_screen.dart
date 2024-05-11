import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liber_maniac/components/my_button.dart';
import 'package:liber_maniac/components/my_textfield.dart';
import 'package:liber_maniac/components/square_tile.dart';

class MyWidget extends StatefulWidget {
  final Function()? onTap;
  const MyWidget({super.key, required this.onTap});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  //text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      //stop the loading circle
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the loading circle
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      userNotfoundMessage(e.code);
    }
  }

  //Wrong email method message
  void userNotfoundMessage(String message) {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                'User Not Found',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
              child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const Icon(
              Icons.menu_book_rounded,
              size: 100,
              color: Color.fromRGBO(129, 8, 61, 1.0),
            ),

            const SizedBox(height: 50),

            Text(
              'Welcome back you\'ve been missed!',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            //username textfield
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            //password TextField
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            const SizedBox(height: 10),
            //forgot password?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            //sign in button
            MyButton(
              text: "Sign In",
              onTap: signUserIn,
            ),

            const SizedBox(height: 20),

            //or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or Continue with',
                      style: TextStyle(color: Color.fromRGBO(129, 8, 61, 1.0)),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  )),
                ],
              ),
            ),

            const SizedBox(height: 20),
            //google or apple sign in buttons
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // google button
                SquareTile(imagePath: 'lib/images/google.png'),

                SizedBox(width: 25),

                // apple button
                SquareTile(imagePath: 'lib/images/apple.png')
              ],
            ),

            const SizedBox(height: 50),
            //not a member? register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member?'),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Register now',
                    style: TextStyle(
                      color: Color.fromRGBO(129, 8, 61, 1.0),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ))),
    );
  }
}
