import 'package:api_demo/signup/signup.dart';
import 'package:flutter/material.dart';

import '../api_demo.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailloginController = TextEditingController();
  TextEditingController passwordloginController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailloginController,
              decoration: const InputDecoration(hintText: 'email'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: passwordloginController,
              decoration: const InputDecoration(hintText: 'password'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const ApiDemi())));
                },
                child: const Text('Login')),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const Signup())));
                },
                child: const Text('if you donot have an ac'))
          ],
        ),
      ),
    );
  }
}
