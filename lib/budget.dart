import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'fonts.dart';
import 'landing_page.dart';

class Budget extends StatefulWidget {
  final String diet;

  Budget({Key? key, required this.diet}) : super(key: key);

  @override
  State<Budget> createState() => _BudgetState(diet: diet);
}

class _BudgetState extends State<Budget> {
  _BudgetState({required this.diet});

  final String diet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Center(
          //Heading
          //Heading
          //Heading
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(bottom: 30)),
              SizedBox(
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WHAT'S YOUR MONTHLY BUDGET", style: headingStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("TO ",
                            textAlign: TextAlign.center, style: headingStyle),
                        Text(diet,
                            textAlign: TextAlign.center, style: headingStyle),
                        Text("?",
                            textAlign: TextAlign.center, style: headingStyle),
                      ],
                    ),
                  ],
                ),
              ),
              //Heading
              //Heading
              //Heading
              Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/shopping.png"))),
              ),

              //Buttons
              //Buttons
              //Buttons

              BudgetGoalButtons(
                buttonTittle: '2,000 - 3,999',
                budget: '20,000 - 39,999',
                diet: diet,
              ),
              BudgetGoalButtons(
                buttonTittle: '4,000 - 6,999',
                budget: '40,000 - 69,999',
                diet: diet,
              ),
              BudgetGoalButtons(
                buttonTittle: '7,000 - 9,999',
                budget: '70,000 - 100,000',
                diet: diet,
              ),
              BudgetGoalButtons(
                buttonTittle: 'Above 10,000',
                budget: 'Above 100,000',
                diet: diet,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 40)),
              const Text("3 of 3"),
            ],
          ),
        ),
      ),
    );
  }
}

class BudgetGoalButtons extends StatelessWidget {
  final String buttonTittle;
  final String budget;
  final String diet;
  late List groceriesList;
  late List mealsList;

  BudgetGoalButtons(
      {Key? key,
      required this.buttonTittle,
      required this.budget,
      required this.diet})
      : super(key: key);

  List gainGroceries = [
    [
      'porridge flower 200kes',
      'ughali flower 500kes ',
      'green peas 300kes',
      'beans/ndengu 300kes',
      'sukuma 200kes'
    ],
    [
      'gain 4,000 grocery 1',
      'gain 4,000 grocery 2',
      'gain 4,000 grocery 3',
      'gain 4,000 grocery 4',
    ],
    [
      'gain 7,000 grocery 1',
      'gain 7,000 grocery 2',
      'gain 7,000 grocery 3',
      'gain 7,000 grocery 4',
    ],
    [
      'gain 10,000 grocery 1',
      'gain 10,000 grocery 2',
      'gain 10,000 grocery 3',
      'gain 10,000 grocery 4',
    ]
  ];

  List gainMeals = [
    [
      [
        'Day 1 Bread and tea (2,000)',
        'Nsima with beans (2,000)',
        'rice and Chicken (2,000)'
      ],
      [
        'Day 2 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 3 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 4 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 5 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 6 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 7 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
    ],
    [
      // day one to 7 breakfast to diner for 40,000 budget (gaining weight)
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
    ],
    [
      // day one to 7 breakfast to diner for 70,000 budget (gaining weight)
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
    ],
    [
      // day one to 7 breakfast to diner for 100,000 budget (gaining weight)
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
    ],
  ];
  //
  //
  //
  List loseGroceries = [
    [
      'lose 20,000 grocery 1',
      'lose 20,000 grocery 2',
      'lose 20,000 grocery 3',
      'lose 20,000 grocery 4',
    ],
    [
      'porridge flower 200kes',
      'ughali flower 500kes ',
      'green peas 300kes',
      'beans/ndengu 300kes',
      'sukuma 200kes',
      'carrots 100kes',
      'eggs 300kes',
      'potatoes 300kes'
    ],
    [
      'lose 70,000 grocery 1',
      'lose 70,000 grocery 2',
      'lose 70,000 grocery 3',
      'lose 70,000 grocery 4',
    ],
    [
      'lose 100,000 grocery 1',
      'lose 100,000 grocery 2',
      'lose 100,000 grocery 3',
      'lose 100,000 grocery 4',
    ]
  ];

  List loseMeals = [
    [
      [
        'Day 1 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 2 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 3 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 4 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 5 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 6 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 7 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
    ],
    [
      // day one to 7 breakfast to diner for 40,000 budget (losing weight)
      ['boiled potatoes and eggs', 'ughali and beans', 'fruit salad'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
    ],
    [
      // day one to 7 breakfast to diner for 70,000 budget (losing weight)
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
    ],
    [
      // day one to 7 breakfast to diner for 100,000 budget (losing weight)

      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
    ],
  ];
  //
  //
  //
  List maintainGroceries = [
    [
      'maintain 20,000 grocery 1',
      'maintain 20,000 grocery 2',
      'maintain 20,000 grocery 3',
      'maintain 20,000 grocery 4',
    ],
    [
      'maintain 40,000 grocery 1',
      'maintain 40,000 grocery 2',
      'maintain 40,000 grocery 3',
      'maintain 40,000 grocery 4',
    ],
    [
      'maintain 70,000 grocery 1',
      'maintain 70,000 grocery 2',
      'maintain 70,000 grocery 3',
      'maintain 70,000 grocery 4',
    ],
    [
      'maintain 100,000 grocery 1',
      'maintain 100,000 grocery 2',
      'maintain 100,000 grocery 3',
      'maintain 100,000 grocery 4',
    ]
  ];

  List maintainMeals = [
    [
      [
        'Day 1 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 2 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 3 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 4 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 5 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 6 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
      [
        'Day 7 Bread and tea (20,000)',
        'Nsima with beans (20,000)',
        'rice and Chicken (20,000)'
      ],
    ],
    [
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
    ],
    [
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
      ['Bread and tea', 'Nsima with beans', 'rice and Chicken'],
    ],
    [
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
      ['Rice pudding', 'rice with eggs', 'chips and sausage'],
    ],
  ];
  //
  //

  // logic for gaining weight
  pickUpList() {
    if (budget == '20,000 - 39,999' && diet == "GAIN ") {
      groceriesList = gainGroceries[0];
      mealsList = gainMeals[0];
    }
    if (budget == '40,000 - 69,999' && diet == "GAIN ") {
      groceriesList = gainGroceries[1];
      mealsList = gainMeals[1];
    }
    if (budget == '70,000 - 100,000' && diet == "GAIN ") {
      groceriesList = gainGroceries[2];
      mealsList = gainMeals[2];
    }
    if (budget == 'Above 100,000' && diet == "GAIN ") {
      groceriesList = gainGroceries[3];
      mealsList = gainMeals[3];
    }
    //
    // logic for losing weight
    if (budget == '20,000 - 39,999' && diet == "LOSE ") {
      groceriesList = loseGroceries[0];
      mealsList = loseMeals[0];
    }
    if (budget == '40,000 - 69,999' && diet == "LOSE ") {
      groceriesList = loseGroceries[1];
      mealsList = loseMeals[1];
    }
    if (budget == '70,000 - 100,000' && diet == "LOSE ") {
      groceriesList = loseGroceries[2];
      mealsList = loseMeals[2];
    }
    if (budget == 'Above 100,000' && diet == "LOSE ") {
      groceriesList = loseGroceries[3];
      mealsList = loseMeals[3];
    }
    //
    //logic for maintaining weight
    if (budget == '20,000 - 39,999' && diet == "MAINTAIN ") {
      groceriesList = maintainGroceries[0];
      mealsList = maintainMeals[0];
    }
    if (budget == '40,000 - 69,999' && diet == "MAINTAIN ") {
      groceriesList = maintainGroceries[1];
      mealsList = maintainMeals[1];
    }
    if (budget == '70,000 - 100,000' && diet == "MAINTAIN ") {
      groceriesList = maintainGroceries[2];
      mealsList = maintainMeals[2];
    }
    if (budget == 'Above 100,000' && diet == "MAINTAIN ") {
      groceriesList = maintainGroceries[3];
      mealsList = maintainMeals[3];
    }
    //
    //


    print(groceriesList);
    print(mealsList[0]);

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pickUpList();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Landing_Page(

                    groceriesList: groceriesList,
                    mealsList: mealsList)));
      },
      child: Column(
        children: [
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(30.0)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    buttonTittle,
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 20)),
        ],
      ),
    );
  }
}
