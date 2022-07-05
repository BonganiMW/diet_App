// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:diet_app/main.dart';
import 'package:lottie/lottie.dart';
import 'package:diet_app/food_choice.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final User = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.info,
              ),
            ),
            IconButton(
              onPressed: (() {}),
              icon: const Icon(
                Icons.settings,
              ),
            ),
            IconButton(
              onPressed: (() {
                FirebaseAuth.instance.signOut();
              }),
              icon: const Icon(
                Icons.logout,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Image(
                      image: AssetImage('assets/limu.png'),
                      width: 100,
                      height: 50,
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 90)),
                const Text(
                  "WELCOME!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("You're signed in as: "),
                    Text(
                      "${User?.email}",
                      style: const TextStyle(color: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 40)),
            const Text(
              "PLEASE SELECT YOUR GENDER!",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 30)),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(30.0),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Food_Choice(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Lottie.network(
                                    'https://assets10.lottiefiles.com/packages/lf20_MIWtgq.json',
                                    height: 230),
                                const Padding(
                                    padding: EdgeInsets.only(top: 10)),
                                const Text(
                                  "MALE",
                                  style: TextStyle(fontWeight: FontWeight.w800),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(30)),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Food_Choice(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Lottie.network(
                                  'https://assets10.lottiefiles.com/packages/lf20_uEl2RR.json'),
                              const Padding(padding: EdgeInsets.only(top: 10)),
                              const Text(
                                "FEMALE",
                                style: TextStyle(fontWeight: FontWeight.w800),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(30.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
