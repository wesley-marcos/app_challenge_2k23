import 'package:app_challenge_2k23/basic_templates/appColors.dart';
import 'package:app_challenge_2k23/screens/cadastrar.dart';
import 'package:app_challenge_2k23/widgets/widgetButton.dart';
import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: backgroundApp(),
        ),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 70,
                right: 70,
              ),
              child: ClipOval(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Logo_teste_semFundo.png'),
                  radius: 150,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
            Text(
              "Conect+",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black.withOpacity(0.5), // Cor da sombra
                      offset: const Offset(3,
                          3), // Deslocamento da sombra (horizontal, vertical)
                      blurRadius: 3,
                    )
                  ]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Você por dentro \nda sua rede",
              textAlign: TextAlign.center,
              //style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: buttons('Entrar', const Cadastrar(), context),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: buttons('Cadastrar', const Cadastrar(), context),
            ),
          ],
        ),
      ),
    );
  }
}
