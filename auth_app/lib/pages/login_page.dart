import 'package:auth_app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });

  final usernameTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Icon(
                  Icons.lock,
                  size: 150,
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Welcome back",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: usernameTextController,
                  hintText: "Enter username",
                  obscureText: false,
                ),
                const SizedBox(
                  height: 15,
                ),
                MyTextField(
                  controller: passwordTextController,
                  hintText: "Enter password",
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "or",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "---- Sign in using: ---",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
