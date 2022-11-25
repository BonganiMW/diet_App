// ignore_for_file: deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.blueGrey),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/LOGO.png'),
                    width: 150,
                  ),
                  Form(
                    child: Theme(
                      data: ThemeData(
                        brightness: Brightness.dark,
                        primarySwatch: Colors.orange,
                        inputDecorationTheme: const InputDecorationTheme(
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40.0, top: 0, bottom: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                prefixIcon: const Icon(
                                  Icons.email,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                labelText: "Enter Email",
                                hintText: "abc@something.com",
                                hintStyle: const TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              keyboardType: TextInputType.text,
                            ),
                            const Padding(padding: EdgeInsets.only(top: 20)),
                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                labelText: "Enter Password",
                                hintText: "min 8 characters",
                                hintStyle: const TextStyle(
                                    color: Colors.red, fontSize: 12),
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            const Padding(padding: EdgeInsets.only(top: 20)),
                            TextFormField(
                              controller: _confirmPasswordController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.solid,
                                  ),
                                ),
                                prefixIcon: const Icon(
                                  Icons.verified_user,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                labelText: "Confirm Password",
                                hintText: "min 8 characters",
                                hintStyle: const TextStyle(
                                    color: Colors.red, fontSize: 12),
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                            ),
                            GestureDetector(
                              onTap: signUp,
                              child: Container(
                                height: 50,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: const Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              onPressed: () => {Navigator.pop(context)},
                              child: const Text("Already have an account?"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
