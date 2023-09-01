import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controllers
  final emailControler = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  // sign up user
  void signUp() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                //logo
                Icon(
                  Icons.message,
                  size:100,
                  color: Colors.grey[800],
                ),

                const SizedBox(height: 50),

                // Create account message
                const Text(
                  "Let's create a account!",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 50),

                // email textfield
                MyTextField(
                  controller: emailControler, 
                  hintText: 'Email', 
                  obscureText: false,
                ),
                
                const SizedBox(height: 50),

                // password textfield
                MyTextField(
                  controller: passwordController, 
                  hintText: 'Password', 
                  obscureText: true,
                ),

                const SizedBox(height: 50),
                
                // confirm password textfield
                MyTextField(
                  controller: confirmPasswordController, 
                  hintText: 'Confirm Password', 
                  obscureText: true,
                ),

                const SizedBox(height: 50),

                // sign in button
                MyButton(onTap: signUp, text: 'Sign Up'),
                
                const SizedBox(height: 50),

                // not a member? register now!
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a member?'),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}