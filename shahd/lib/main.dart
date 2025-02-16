import 'package:flutter/material.dart';
import 'package:workout_app/Screens/welcome_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'workout',
      home: WelcomeView(),
    );
  }
}
