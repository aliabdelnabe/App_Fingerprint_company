import 'package:flutter/material.dart';

class PasswordTextFormField extends StatelessWidget {
  PasswordTextFormField({
    super.key,
    required this.obserText,
    required this.name,
    required this.validator,
    this.onTap,
    this.controller,
  });
  final bool obserText;
  final String name;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obserText,
      validator: validator,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Icon(
            obserText == true ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
        ),
        border: const OutlineInputBorder(),
        hintText: name,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
    );
  }
}
