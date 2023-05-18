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
      const SizedBox(
        height: 50,
      ),
      Container(
        width: 300,
        height: 100,
        padding: const EdgeInsets.only(left: 25, right: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Stack(
          children: [
            Image.asset(
              'images/mapView.jpg',
              fit: BoxFit.cover,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}
