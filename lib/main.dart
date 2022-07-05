// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:diet_app/firebase_options.dart';
import 'package:diet_app/home.dart';
import 'package:diet_app/main_page.dart';
import 'package:diet_app/signin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Firebase initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
                // ignore: prefer_const_constructors

                color: Colors.blueGrey),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                            hintText: "...",
                            hintStyle: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                        ),
                        GestureDetector(
                          onTap: signIn,
                          child: Container(
                            height: 50,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(30.0)),
                            child: const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "don't have an account?",
                              style: TextStyle(color: Colors.white),
                            ),
                            TextButton(
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignIn(),
                                  ),
                                ),
                              },
                              child: const Text("SIGN UP"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
