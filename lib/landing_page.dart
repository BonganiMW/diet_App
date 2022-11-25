import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class Landing_Page extends StatefulWidget {
  const Landing_Page(
      {Key? key,
      required this.mealsList,
      required this.groceriesList})
      : super(key: key);

  final List mealsList;
  final List groceriesList;

  @override
  State<Landing_Page> createState() => _Landing_PageState(

      groceriesList: groceriesList,
      mealsList: mealsList);
}

class _Landing_PageState extends State<Landing_Page> {
  _Landing_PageState(
      {required this.mealsList,
      required this.groceriesList,
      });

  final List mealsList;
  final List groceriesList;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        color: Colors.white,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
                height: 600,
                width: 350,
                decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/notepad.jpg')),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.only(bottom: 170)),
                Text(
                  "MY GROCERY LIST",
                  style: GoogleFonts.robotoCondensed(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[800],
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 40)),
                for (String grocery in groceriesList)
                  Text(
                    grocery,
                    style: GoogleFonts.pacifico(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800],
                    ),
                  ),
                Checkbox(
                    value: value,
                    onChanged: (value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                  day1: mealsList[0],
                                  day2: mealsList[1],
                                  day3: mealsList[2],
                                  day4: mealsList[3],
                                  day5: mealsList[4],
                                  day6: mealsList[5],
                                  day7: mealsList[6],)));
                      setState(() {
                        this.value = value!;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
