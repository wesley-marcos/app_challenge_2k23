import 'package:flutter/material.dart';

import 'basic_templates/appColors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.only(top: 25, left: 30, right: 30),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 0, top: 0, right: 0),
          child: ListView(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Image.asset('images/Logo_teste_semFundo.png'),
                  )
                ],
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
                height: 20,
              ),
              SizedBox(
                height: 53,
                width: 347,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9DCE59),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                height: 53,
                width: 347,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9DCE59),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Cadastrar",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
