import 'dart:io';

import 'package:flutter/material.dart';
import 'ExpenseScreen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Budget Tracker",
  theme: ThemeData(
      primarySwatch: Colors.deepPurple,
      textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Colors.white,
      )
  )
  ),
  home: Home(),

)
);

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int total = 48700;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[300],
      child: Column(
        children: [
          SizedBox(height: 20,),
          
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                child: ElevatedButton(
                  onPressed: (){exit(0);},
                  child: Icon(Icons.arrow_back,
                    color: Colors.deepPurple,
                    size: 25,
                  ),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.transparent,
                    backgroundColor: Colors.white,
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(15)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 24, 0),
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: Colors.deepPurple[600],
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                  ),
                  child: Text("Budget Tracker"),
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),
          
          Image(
            image: AssetImage("images/account.png"),
            height: 120,
            width: 120,
          ),
          SizedBox(
            height: 25,
          ),

          DefaultTextStyle(
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.w400,
            ),
            child: Text(
                "Welcome"
            ),
          ),
          SizedBox(height: 5,),

          DefaultTextStyle(
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              fontWeight: FontWeight.w400,
            ),
            child: Text(
                "Back!"
            ),
          ),

          SizedBox(height: 60,),



          Container(
            height: 55,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.deepPurple[100],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: DefaultTextStyle(
                    child: Text("Total:"),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2
                    ),
                  ),
                ),


                DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 21.5,
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,


                    ),
                    child: Text("$total")
                ),

                Flexible(
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ExpenseScreen()));
                    },
                    child: Icon(
                        Icons.expand_circle_down_outlined,
                        size: 30,
                      color: Colors.black38,
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepPurple[100],
                      shape: CircleBorder(),
                    ),
                  ),
                ),

              ],
            ),
          )
          
          
        ],
      ),
    );
  }
}
