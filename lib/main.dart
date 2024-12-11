import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'questionbrain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizBrain brain = QuizBrain();
  List<Icon> Scorekeeper = [];
  void Checkanswer(bool answer) {
    if (brain.Next() == false) {
      Alert(
        context: context,
        title: "Finished",
        desc: "You have reached the last question",
      ).show();

      Scorekeeper.clear(); // Call the method with parentheses
      brain.reset();
    } else {
      bool correctanswer = brain.getanswer();
      if (answer == brain.getanswer()) {
        // Check if the answer is false
        setState(() {
          Scorekeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
          brain.Next();
        });
      } else {
        setState(() {
          Scorekeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
          brain.Next();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                brain.getquestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                // This sets the text color
              ),
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                Checkanswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Checkanswer(false);
              },
            ),
          ),
        ),
        //TODO: Add a Row here as your score keeper
        Row(children: Scorekeeper),
      ],
    );
  }
}
