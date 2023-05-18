import 'package:app_challenge_2k23/widgets/widgetAppsDetails.dart';
import 'package:app_challenge_2k23/widgets/widgetRowApps.dart';
import 'package:flutter/material.dart';

import '../basic_templates/appColors.dart';
import '../widgets/menuDrawer.dart';
import '../widgets/widgetInfoApp.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(1, 2),
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
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(
                    child: Container(
                      padding: const EdgeInsets.only(left: 12, top: 5),
                      child: const Text(
                        "Rede: Nome da rede",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  widgetAppsDetails(
                    "images/netflix.png",
                    "1.1Gb/s",
                    "500Mb/s",
                    "Streaming",
                    "192.168.0.1",
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ), // Arredonda as bordas
                    gradient: backgroundApp(),
                  ),
                  child: CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: widgetRowApps(
                                "images/${appsList[index].toLowerCase()}.png",
                                appsList[index],
                                speedList[index],
                                percentageList[index],
                              ),
                            );
                          },
                          childCount: appsList.length,
                        ),
                      ),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
