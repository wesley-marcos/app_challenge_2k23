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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(top: 45, left: 30, right: 30),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 0, right: 20),
          child: ListView(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Image.asset('images/Logo_teste_semFundo.png'),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Conect+",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),

              Text(
                "Você por dentro \nda sua rede",
                //style: TextStyle(color: Colors.black, fontSize: 20),
              ),

              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Entrar"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
