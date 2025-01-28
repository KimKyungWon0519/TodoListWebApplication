import 'package:flutter/material.dart';

class BoardHeader extends StatelessWidget {
  final String text;

  const BoardHeader({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight,
      child: Center(
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
    ;
  }
}
