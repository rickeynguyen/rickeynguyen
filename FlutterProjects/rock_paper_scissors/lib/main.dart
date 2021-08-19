import 'package:flutter/material.dart';
import 'constants.dart';
import 'router.dart' as router;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rock Paper Scissors',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      //DOC: https://medium.com/flutter-community/flutter-navigation-cheatsheet-a-guide-to-named-routing-dc642702b98c
      onGenerateRoute: router.generateRoute,
      initialRoute: kWelcomeScreenRoute,
      //},
    );
  }
}
