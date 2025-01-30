import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateField extends StatefulWidget {
  final String labelText;
  final VoidCallback? onTap;
  final DateTime initialValue;
  final Function(DateTime date)? onSaved;

  const DateField({
    super.key,
    required this.labelText,
    this.onTap,
    required this.initialValue,
    this.onSaved,
  });

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  late final TextEditingController _textEditingController;
  late DateTime _dateTime;

  @override
  void initState() {
    super.initState();

    _textEditingController = TextEditingController(
        text: DateFormat('yyyy/MM/dd').format(widget.initialValue));
    _dateTime = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      readOnly: true,
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(),
      ),
      onTap: () {
        showDatePicker(
          context: context,
          firstDate: DateTime(1900),
          lastDate: DateTime(2300),
          initialDate: _dateTime,
        ).then(
          (value) {
            if (value == null) return;

            _textEditingController.text =
                DateFormat('yyyy/MM/dd').format(widget.initialValue);
            _dateTime = value;

            widget.onSaved?.call(_dateTime);
          },
        );
      },
    );
  }
}
