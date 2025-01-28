import 'package:flutter/material.dart';

class BaseField extends StatelessWidget {
  final String labelText;
  final bool expands;

  const BaseField({
    super.key,
    required this.labelText,
    this.expands = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      expands: expands,
      maxLines: expands ? null : 1,
    );
  }
}
