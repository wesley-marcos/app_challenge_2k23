import 'package:app_challenge_2k23/screens/start.dart';
import 'package:app_challenge_2k23/widgets/widgetButton.dart';
import 'package:flutter/material.dart';

import '../basic_templates/appColors.dart';

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
          padding: EdgeInsets.only(left: 20, top: 180),
          children: [
            SizedBox(
              height: 20,
            ),

            //Foto Balestra
            Container(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/pedro-balestra"),
                            //fit: BoxFit.values,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                    height: 30,
                  ),
                  Text(
                    "Pedro Balestra\nGraduando em Eng. de \nComputação\n9º "
                    "Período - INATEL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 20,
              height: 100,
            ),

            //Foto Wesley
            Container(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image:
                                NetworkImage("https://avatars.githubusercontent"
                                    ".com/wesley-marcos"),
                            //fit: BoxFit.values,
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                    height: 30,
                  ),
                  Text(
                    "Wesley Marcos\nGraduando em Eng. de \nComputação\n9º "
                    "Período - INATEL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              width: 20,
              height: 100,
            ),
            buttons("Voltar", StartPage(), context)
          ],
        ),
      ),
    );
  }
}
