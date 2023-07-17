import 'package:flutter/material.dart';


class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                    onPressed: () => Navigator.pop(context),
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

            SizedBox(height: 65,),



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
                      child: Text(r"48700")
                  ),

                  Flexible(
                    child: TextButton(
                      onPressed: (){
                        Navigator.pop(context);
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
            ),


            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    height: 46,
                    width: 280,
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
                            child: Text("Groceries: "),
                            style: TextStyle(
                                color: Colors.deepPurple[400],
                                fontSize: 27,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: DefaultTextStyle(
                              style: TextStyle(
                                fontSize: 21.5,
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,


                              ),
                              child: Text("-300")
                          ),
                        ),


                      ],
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: (){},
                  child: Icon(Icons.delete, size: 28,),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.deepPurple[300],
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(7),

                  ),
                )
              ],
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    height: 46,
                    width: 280,
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
                            child: Text("Bills: "),
                            style: TextStyle(
                                color: Colors.deepPurple[400],
                                fontSize: 27,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: DefaultTextStyle(
                              style: TextStyle(
                                fontSize: 21.5,
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,


                              ),
                              child: Text("-1000")
                          ),
                        ),


                      ],
                    ),
                  ),
                ),

                ElevatedButton(

                  onPressed: (){},
                  child: Icon(Icons.delete, size: 28,),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.deepPurple[300],
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(7),

                  ),
                )
              ],
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Container(
                    height: 46,
                    width: 280,
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
                            child: Text("Salary: "),
                            style: TextStyle(
                                color: Colors.deepPurple[400],
                                fontSize: 27,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: DefaultTextStyle(
                              style: TextStyle(
                                fontSize: 21.5,
                                color: Colors.black87,
                                fontWeight: FontWeight.w700,


                              ),
                              child: Text("+50000")
                          ),
                        ),


                      ],
                    ),
                  ),
                ),

                ElevatedButton(

                  onPressed: (){},
                  child: Icon(Icons.delete, size: 28,),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black87,
                    foregroundColor: Colors.deepPurple[300],
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(7),

                  ),
                )
              ],
            )


          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
                backgroundColor: Colors.deepPurple[600],
                scrollable: true,
                title: Center(child: Text("New Entry")),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            labelText: "Category:",
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Price:",
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple[600],
                      shadowColor: Colors.transparent,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10)
                    ),
                    child: Icon(Icons.check_circle_rounded, size: 50,),
                    onPressed: () {

                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add, color: Colors.deepPurple, size: 40,),
      ),
    );
  }
}
