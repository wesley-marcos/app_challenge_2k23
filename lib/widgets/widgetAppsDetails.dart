import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget widgetAppsDetails(image, download, upload, tipo, host) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20, right: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('$image'),
                ),
              ),
            ),
            Text(
              "Download: $download\nUpload: $upload\nTipo: $tipo\nHost: $host",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Text(
            //   "$speed",
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            // ),
            // Text(
            //   "$usage",
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            // ),
          ],
        ),
      ),
      SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Ver no mapa os pontos de acesso:',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Container(
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage('images/mapRetrato.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: Container(
                  color: Colors.transparent,
                  child: const Center(
                    child: Text(
                      "View Map",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              )),
        ),
      )
    ],
  );
}
