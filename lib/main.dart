import 'package:app_challenge_2k23/home.dart';
import 'package:flutter/material.dart';

import 'home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //final BuildContext CriterionCont;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        //color: AppColors.purple,
        home: Home2());
  }
}
