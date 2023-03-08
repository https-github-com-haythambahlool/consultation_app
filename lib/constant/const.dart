import 'package:flutter/material.dart';

final kprimColor = Colors.blue[900]!;
const ksecColor = Colors.blueAccent;
// const Color kprimColor = Color(0xff4530b2);
// const Color ksecColor = Color(0xff7564e4);
// const Color kthrColor = Color(0xffFFAEBC);
// const Color kforColor = Color(0xffFBE7C6);

final backgrondColor = Color.fromARGB(255, 238, 245, 249);
final inputDecoration = InputDecoration(
  labelText: 'anytext',
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 0.0,
    ),
  ),
  focusedBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 0.0,
    ),
  ),
  errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(50)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(50)),
  labelStyle: TextStyle(
    color: Colors.grey[400],
  ),
);
