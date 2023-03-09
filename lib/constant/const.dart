import 'package:flutter/material.dart';

const kprimColor = Color(0xff7b4cff);
const ksecColor = Color.fromARGB(255, 174, 145, 254);
// const Color kprimColor = Color(0xff4530b2);
// const Color ksecColor = Color(0xff7564e4);
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
