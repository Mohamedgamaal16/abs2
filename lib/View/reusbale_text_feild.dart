  import 'package:flutter/material.dart';

Widget reusableTextField(String text, IconData iconShape) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xffd3d3d3),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Icon(
              iconShape,
              color: Colors.white,
              size: 35,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }

