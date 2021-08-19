import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}


class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's Play"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Rock, Paper, or Scissors?',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  kRock,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.terrain_rounded),
                  tooltip: kRock,
                  color: Colors.brown,
                  iconSize: 100.0,
                  onPressed: () {
                    Navigator.pushNamed(context, kWinnerScreenRoute, arguments: kRock);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  kPaper,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.text_snippet_rounded),
                  tooltip: kPaper,
                  color: Colors.lightBlue,
                  iconSize: 100.0,
                  onPressed: () {
                    Navigator.pushNamed(context, kWinnerScreenRoute, arguments: kPaper);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  kScissors,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.share_outlined),
                  tooltip: kScissors,
                  color: Colors.deepPurple,
                  iconSize: 100.0,
                  onPressed: () {
                    Navigator.pushNamed(context, kWinnerScreenRoute, arguments: kScissors);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
