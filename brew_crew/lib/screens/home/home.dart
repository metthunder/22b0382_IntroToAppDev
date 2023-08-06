import 'package:brew_crew/models/brew.dart';
import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/Screens/ExpenseScreen.dart';
import 'package:brew_crew/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'brew_list.dart';

int? total_home;

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  Future getData() async {
    var collection = FirebaseFirestore.instance.collection('Total');
    var docSnapshot = await collection.doc('total').get();
    if (docSnapshot.exists) {
      Map<String, dynamic> data = docSnapshot.data()!;

      // You can then retrieve the value from the Map like this:
      total_home = data['total'];
      print(total_home);
      return total_home;
    }
  }

  void foo() async {
    total_home = await getData();
  }

  @override
  void setState(VoidCallback fn) {
    foo();
    super.setState(fn);
  }

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void setState(VoidCallback fn) {
      foo();
      super.setState(fn);
    }

    setState(() {
      foo();
    });
    return StreamProvider<List<Brew>?>.value(
      initialData: null,
      value: DatabaseService().brews,
      child: Container(
        color: Colors.deepPurple[300],
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
                  child: ElevatedButton(
                    onPressed: () async {
                      await _auth.signOut();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.deepPurple,
                      size: 25,
                    ),
                    style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15)),
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
            SizedBox(
              height: 25,
            ),
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
              child: Text("Welcome"),
            ),
            SizedBox(
              height: 5,
            ),
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.w400,
              ),
              child: Text("Back!"),
            ),
            SizedBox(
              height: 60,
            ),
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
                          letterSpacing: 2),
                    ),
                  ),
                  DefaultTextStyle(
                      style: TextStyle(
                        fontSize: 21.5,
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                      ),
                      child: Text("$total_home")),
                  Flexible(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExpenseScreen()));
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
      ),
    );
  }
}
