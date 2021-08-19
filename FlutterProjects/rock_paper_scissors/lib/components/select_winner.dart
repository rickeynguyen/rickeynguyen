import 'dart:math';
import 'package:rock_paper_scissors/constants.dart';

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
}