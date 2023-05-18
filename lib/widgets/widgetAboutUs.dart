import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

// ...

Widget aboutUs(devName, photoUrl, urlGitHub, urlLikedin) {
  return SizedBox(
    child: Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: photoUrl,
                      //fit: BoxFit.values,
                    )),
              ),
            ),
            const SizedBox(
              width: 20,
              height: 30,
            ),
            Text(
              "$devName\nGraduando em Eng. de \nComputação\n9º "
              "Período - INATEL",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => openUrl('$urlGitHub'),
                child: Container(
                  width: 40, // Largura do botão
                  height: 40, // Altura do botão
                  decoration: const BoxDecoration(
                    color: Colors.transparent, // Cor de fundo do botão
                    shape: BoxShape.circle, // Forma circular
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'images/github-sign.png', // Caminho da imagem
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => openUrl('$urlLikedin'),
                child: Container(
                  width: 40, // Largura do botão
                  height: 40, // Altura do botão
                  decoration: const BoxDecoration(
                    color: Colors.transparent, // Cor de fundo do botão
                    shape: BoxShape.circle, // Forma circular
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'images/linkedin.png', // Caminho da imagem
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Future<void> openUrl(String url) async {
  await launch(url);
}
