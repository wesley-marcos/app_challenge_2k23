import 'package:app_challenge_2k23/widgets/widgetAppsDetails.dart';
import 'package:app_challenge_2k23/widgets/widgetRowApps.dart';
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
              //padding: EdgeInsets.only(left: 10),
              color: Colors.white,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  widgetAppsDetails("images/netflix.png", "1.1Gb/s", "500Mb/s",
                      "Streaming", "192.168.0.1"),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 350, bottom: 0),
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 600,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            gradient: backgroundApp(),
                          ),
                          child: ListView(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              widgetRowApps("images/netflix.png", "Netflix",
                                  "1.1Gb/s", "40%"),
                              const SizedBox(
                                height: 20,
                              ),
                              widgetRowApps("images/instagram.png", "Instagram",
                                  "800Mb/s", "25%"),
                              const SizedBox(
                                height: 20,
                              ),
                              widgetRowApps("images/tiktok.png", "Tiktok",
                                  "300Mb/s", "15%"),
                              const SizedBox(
                                height: 20,
                              ),
                              widgetRowApps("images/spotify (1).png", "Spotfy",
                                  "100Mb/s", "10%"),
                              const SizedBox(
                                height: 20,
                              ),
                              widgetRowApps("images/whatsapp.png", "WhatsApp",
                                  "100Mb/s", "10%"),
                              const SizedBox(
                                height: 20,
                              ),
                              widgetRowApps(
                                  "images/teams.png", "Teams", "0Mb/s", "0%"),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
