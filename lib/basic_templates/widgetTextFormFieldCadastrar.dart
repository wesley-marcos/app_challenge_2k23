import 'package:flutter/material.dart';

Widget textFormFieldCadastrar(context, label, type) {
  return Theme(
    data: Theme.of(context).copyWith(
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
      ),
    ),
    child: TextFormField(
      decoration: InputDecoration(
        labelText: '$label',
        labelStyle: const TextStyle(color: Colors.black),
        //suffixIcon: Icon(Icons.person),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ), // Cor da borda quando o campo está em foco
        ),
      ),
      keyboardType: type,
    ),
  );
}
