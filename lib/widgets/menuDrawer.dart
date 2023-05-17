import 'package:app_challenge_2k23/basic_templates/appColors.dart';
import 'package:flutter/material.dart';

import '../screens/home.dart';

Widget menuDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 52, left: 52, right: 52),
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(gradient: backgroundApp()),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('images/user.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Ola, user",
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: Colors.black,
            size: 30,
          ),
          title: const Text(
            "Perfil",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.groups,
            color: Colors.black,
            size: 30,
          ),
          title: const Text(
            "Sobre nós",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.black,
            size: 30,
          ),
          title: const Text(
            "Sair",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Home()));
          },
        )
      ],
    ),
  );
}
