import 'package:flutter/material.dart';

import '../basic_templates/appColors.dart';
import '../widgets/menuDrawer.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 4.0,
        title: Text(
          'Conect+',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.5), // Cor da sombra
                offset: const Offset(
                    1, 2), // Deslocamento da sombra (horizontal, vertical)
                blurRadius: 3,
              )
            ],
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: backgroundAppBar()),
        ),
      ),
      drawer: menuDrawer(context),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  gradient: backgroundApp(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
