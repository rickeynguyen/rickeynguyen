import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/screens/undefined_screen.dart';
import 'package:rock_paper_scissors/screens/welcome.dart';
import 'package:rock_paper_scissors/screens/winner.dart';
import 'constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case kWelcomeScreenRoute:
      return MaterialPageRoute(builder: (context) => WelcomeScreen());
    case kWinnerScreenRoute:
      var playerPick = settings.arguments;
      return MaterialPageRoute(builder: (context) => WinnerScreen(playerPick: playerPick.toString()));
    default:
      return MaterialPageRoute(builder: (context) => UndefinedScreen(name: settings.name));
  }
}