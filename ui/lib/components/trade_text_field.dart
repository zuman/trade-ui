import 'package:flutter/material.dart';

class TradeTextField extends StatelessWidget {
  final dynamic controller;
  final String labelText;
  final bool obscureText;
  final dynamic validator;
  final TextInputType textInputType;

  const TradeTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.obscureText = false,
    this.validator,
    this.textInputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextFormField(
            obscureText: obscureText,
            controller: controller,
            validator: validator,
            keyboardType: textInputType,
            decoration:
                InputDecoration(border: InputBorder.none, labelText: labelText),
          ),
        ),
      ),
    );
  }
}
