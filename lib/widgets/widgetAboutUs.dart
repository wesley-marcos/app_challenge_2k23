import 'package:flutter/material.dart';

Widget aboutUs(devName, photoUrl) {
  return SizedBox(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
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
        )
      ],
    ),
  );
}
