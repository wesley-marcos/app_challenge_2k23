import 'package:flutter/material.dart';

import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //final BuildContext CriterionCont;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            textSelectionTheme: const TextSelectionThemeData(
          selectionHandleColor: Color(0xFF9DCE59),
        )),
        //color: AppColors.purple,
        home: const Home());
  }
}
