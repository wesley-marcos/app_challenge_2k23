import 'package:flutter/cupertino.dart';

Widget widgetAppsDetails(image, download, upload, tipo, host){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 20),
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
    );
}