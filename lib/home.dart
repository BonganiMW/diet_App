// ignore_for_file: unused_import

import 'package:diet_app/info.dart';
import 'package:diet_app/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:diet_app/main.dart';
import 'package:get/utils.dart';
import 'package:lottie/lottie.dart';
import 'package:diet_app/weight_goals.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  final User = FirebaseAuth.instance.currentUser;
  late String gender;
  @override
  Widget build(BuildContext context) {
    void onSelected(BuildContext context, int item) {
      switch (item) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SettingsPage(),
            ),
          );
          break;

        case 1:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const InfoPage(),
            ),
          );
          break;

        case 2:
          FirebaseAuth.instance.signOut();
          break;
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/limu.png"),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                  value: 0,
                  child: Row(children: const [
                    Icon(Icons.settings),
                    Text(" Settings")
                  ])),
              PopupMenuItem<int>(
                  value: 1,
                  child: Row(children: const [
                    Icon(Icons.info_outline),
                    Text(" info")
                  ])),
              PopupMenuItem<int>(
                  value: 2,
                  child: Row(children: const [
                    Icon(Icons.logout_outlined),
                    Text(" SignOut")
                  ])),
            ],
          ),
        ],
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40),
          ),
          Column(
            children: [
              const Padding(padding: EdgeInsets.only(bottom: 5)),
              Text(
                "WELCOME!",
                textAlign: TextAlign.center,
                style: GoogleFonts.robotoCondensed(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.grey[800],
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You're signed in as: ",
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "${User?.email}",
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 40)),
          SizedBox(
            width: 320,
            child: Text("PLEASE SELECT YOUR GENDER!",
                textAlign: TextAlign.center, style: headingStyle),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 30)),
          Center(
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(30.0),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = ' SIR?';
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Weight_Goals(gender: gender)),
                    );
                  },
                  child: Container(
                    width: 115,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 15)),
                        Lottie.network(
                            'https://assets10.lottiefiles.com/packages/lf20_MIWtgq.json',
                            height: 235),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          width: 200,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Colors.blue[100]),
                          child: Text(
                            "MALE",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 40)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      gender = " MA'AM?";
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Weight_Goals(gender: gender),
                      ),
                    );
                  },
                  child: Container(
                    width: 115,
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        const Padding(padding: EdgeInsets.only(top: 15)),
                        Lottie.network(
                            'https://assets10.lottiefiles.com/packages/lf20_uEl2RR.json',
                            height: 235),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          width: 200,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              color: Colors.pink[100]),
                          child: Text(
                            "FEMALE",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
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
          ),
          const Padding(padding: EdgeInsets.only(bottom: 170)),
          const Text("1 0f 3")
        ],
      ),
    );
  }
}
