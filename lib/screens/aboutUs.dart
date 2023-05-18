import 'package:app_challenge_2k23/screens/start.dart';
import 'package:app_challenge_2k23/widgets/widgetButton.dart';
import 'package:flutter/material.dart';

import '../basic_templates/appColors.dart';
import '../widgets/widgetAboutUs.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: backgroundApp(),
        ),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 120),
              child: Column(
                children: [
                  aboutUs(
                      'Pedro Balestra',
                      const NetworkImage("https://avatars.githubusercontent"
                          ".com/pedro-balestra"),
                      'https://github.com/pedro-balestra',
                      'https://www.linkedin.com/in/pedro-balestra/'),
                  const SizedBox(
                    width: 20,
                    height: 100,
                  ),
                  aboutUs(
                      'Wesley Marcos',
                      const NetworkImage("https://avatars.githubusercontent"
                          ".com/wesley-marcos"),
                      'https://github.com/wesley-marcos',
                      'https://www.linkedin.com/in/wesley-marcos-borges/'),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
              height: 70,
            ),
            buttons('Voltar', const StartPage(), context),
          ],
        ),
      ),
    );
  }
}
