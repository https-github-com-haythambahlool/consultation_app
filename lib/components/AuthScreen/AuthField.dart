import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  AuthField({
    super.key,
    required this.labelText,
    required this.controller,
  });
  String labelText;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
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
          errorStyle: TextStyle(color: Colors.red),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 0.0,
            ),
          ),
          labelStyle: TextStyle(
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
