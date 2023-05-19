import 'package:flutter/material.dart';

Widget textFormFieldPerfil(context, label, type) {
  return Theme(
    data: Theme.of(context).copyWith(
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: Color(0xFF9DCE59),
        selectionHandleColor: Color(0xFF9DCE59),
      ),
    ),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6), // Cor da sombra
            spreadRadius: 3, // Alargamento da sombra
            blurRadius: 7, // Desfoque da sombra
            offset: const Offset(
                3, 4), // Deslocamento da sombra (horizontal, vertical)
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextFormField(
          enabled: false,
          autofocus: false,
          decoration: InputDecoration(
            //contentPadding: EdgeInsets.symmetric(horizontal: 30),
            border: InputBorder.none,
            labelText: '$label',
            labelStyle: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500),
            //suffixIcon: Icon(Icons.person),
          ),
          keyboardType: type,
        ),
      ),
    ),
  );
}
