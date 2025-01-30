import 'package:flutter/material.dart';

class BaseField extends StatelessWidget {
  final String labelText;
  final bool expands;
  final bool readOnly;
  final ValueChanged<String>? onSaved;
  final VoidCallback? onTap;
  final String initialValue;

  const BaseField({
    super.key,
    required this.labelText,
    this.expands = false,
    this.onSaved,
    this.readOnly = false,
    this.onTap,
    this.initialValue = '',
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: initialValue),
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
      ),
      expands: expands,
      maxLines: expands ? null : 1,
      onChanged: onSaved,
      onTap: onTap,
    );
  }
}
