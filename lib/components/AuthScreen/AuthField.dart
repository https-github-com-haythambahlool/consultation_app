import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  AuthField({super.key, required this.labelText, this.controller});
  String labelText;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        onChanged: (value) {},
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
          labelStyle: TextStyle(
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
