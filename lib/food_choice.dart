import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Food_Choice extends StatefulWidget {
  Food_Choice({Key? key}) : super(key: key);

  @override
  State<Food_Choice> createState() => _Food_ChoiceState();
}

class _Food_ChoiceState extends State<Food_Choice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(bottom: 230)),
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(right: 125)),
                    const Text(
                      'Vegan',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 115)),
                    IconButton(
                      color: Colors.white,
                      onPressed: (() {}),
                      icon: const Icon(
                        Icons.info,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(right: 125)),
                    const Text(
                      'Vegiterian',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 75)),
                    IconButton(
                      color: Colors.white,
                      onPressed: (() {}),
                      icon: const Icon(
                        Icons.info,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Container(
              height: 60,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(right: 125)),
                    const Text(
                      'Flexiterian',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 75)),
                    IconButton(
                      color: Colors.white,
                      onPressed: (() {}),
                      icon: const Icon(
                        Icons.info,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
