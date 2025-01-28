import 'package:flutter/material.dart';

class BaseField extends StatelessWidget {
  final String labelText;

  const BaseField({
    super.key,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
