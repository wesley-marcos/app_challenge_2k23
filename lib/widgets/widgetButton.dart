import 'package:flutter/material.dart';

Widget buttons(label, page, context) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(23),
      ),
      child: SizedBox(
        height: 53,
        width: 347,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF9DCE59),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            '$label',
            style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
      ),
    ),
  );
}
