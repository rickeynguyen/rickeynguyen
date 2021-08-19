import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/components/rounded_button.dart';
import 'package:rock_paper_scissors/constants.dart';
import 'package:rock_paper_scissors/components/select_winner.dart';

class WinnerScreen extends StatefulWidget {
  final String? playerPick;
  const WinnerScreen({Key? key, this.playerPick}) : super(key: key);

  @override

  _WinnerScreenState createState() => _WinnerScreenState();
}

// DOC: https://www.codegrepper.com/code-examples/dart/flutter+how+to+pass+data+between+stateful+widgets
class _WinnerScreenState extends State<WinnerScreen> {
  @override
  Widget build(BuildContext context) {
    String result = "";
    String resultImage = "";
    String computerChoice = "";
    String playerChoice = widget.playerPick.toString();

    var data = selectWinner(playerChoice);

    if (data != null) {
      result = data[0].toString();
      computerChoice = data[1].toString();
    }

    if (result == kPlayer) {
      resultImage = kWinImage;
    }
    else if (result == kComputer) {
      resultImage = kLoseImage;
    }
    else {
      resultImage = kDrawImage;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("And the Winner Is"),
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
                    result,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(resultImage),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You chose $playerChoice',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Computer chose $computerChoice',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
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
                RoundedButton(
                  title: 'Play Again',
                  colour: Colors.red,
                  onPressed: () {
                    Navigator.pushNamed(context, kWelcomeScreenRoute);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}



/*
List? selectWinner(String selected) {
  String playerChoice;
  String computerChoice;

  playerChoice = selected;

  var random = new Random();
  var computerRandom = random.nextInt(3);
  print(computerRandom);

  if (computerRandom == 0) {
    computerChoice = 'Rock';
  } else if (computerRandom == 1) {
    computerChoice = 'Paper';
  } else {
    computerChoice = 'Scissors';
  }

  print("Player chose $playerChoice");
  print("Computer chose $computerChoice");

  //Player rocks
  if (playerChoice == "Rock" && computerChoice == "Rock") {
    print("😒 DRAW 😒 ");
    return [kDraw, computerChoice];
  }
  if (playerChoice == "Rock" && computerChoice == "Scissors") {
    print("Player wins 😀");
    return [kPlayer, computerChoice];
  }
  if (playerChoice == "Rock" && computerChoice == "Paper") {
    print("Computer wins 😤");
    return [kComputer, computerChoice];
  }

  //Player paper
  if (playerChoice == "Paper" && computerChoice == "Rock") {
    print("Player wins 😀");
    return [kPlayer, computerChoice];
  }
  if (playerChoice == "Paper" && computerChoice == "Scissors") {
    print("Computer wins 😤");
    return [kComputer, computerChoice];
  }
  if (playerChoice == "Paper" && computerChoice == "Paper") {
    print("😒 DRAW 😒");
    return [kDraw, computerChoice];
  }

  //Player scissors
  if (playerChoice == "Scissors" && computerChoice == "Rock") {
    print("Computer wins 😤");
    return [kComputer, computerChoice];
  }
  if (playerChoice == "Scissors" && computerChoice == "Scissors") {
    print("😒 DRAW 😒");
    return ([kDraw, computerChoice]);
  }
  if (playerChoice == "Scissors" && computerChoice == "Paper") {
    print("Player wins 😀");
    return ([kPlayer, computerChoice]);
  }
}*/
