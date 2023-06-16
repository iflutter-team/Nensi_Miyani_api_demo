import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailSignupController = TextEditingController();
  TextEditingController passwordSignupController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailSignupController,
            decoration: const InputDecoration(hintText: 'email'),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: passwordSignupController,
            decoration: const InputDecoration(hintText: 'password'),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Signup'))
        ],
      ),
    );
  }
}
