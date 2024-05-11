import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:liber_maniac/components/my_button.dart';
import 'package:liber_maniac/components/my_textfield.dart';
import 'package:liber_maniac/components/square_tile.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  //text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  //sign user up method
  void signUserUp() async {
    //show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
    //try creating new user
    try {
      //check if password is confirmed
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
      } else {
        //show error message for different password
        differentPasswordMessage();
      }
      // await FirebaseAuth.instance.createUserWithEmailAndPassword(
      //   email: emailController.text,
      //   password: passwordController.text,
      // );
      //pop the loading circle
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      //pop the loading circle
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
      //show error message
      userNotfoundMessage();
    }
  }

  //Wrong email method message
  void userNotfoundMessage() {
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

  // different password error message
  void differentPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: Center(
              child: Text(
                'Password Doesnot Match',
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
            const SizedBox(height: 5),
            const Icon(
              Icons.person,
              size: 200,
              color: Color.fromRGBO(129, 8, 61, 1.0),
            ),

            const SizedBox(height: 5),

            Text(
              'Register New Account',
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
            //Confirm password TextField
            MyTextField(
              controller: confirmPasswordController,
              hintText: 'ConfirmPassword',
              obscureText: true,
            ),

            const SizedBox(height: 10),
            //sign in button
            MyButton(
              text: "Sign Up",
              onTap: signUserUp,
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

            const SizedBox(height: 25),
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

            const SizedBox(height: 20),
            //not a member? register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have account?'),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Login now',
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
