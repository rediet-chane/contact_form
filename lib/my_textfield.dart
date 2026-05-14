import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  int? maxLines = 1;
  MyTextfield({
    super.key,
    required this.label,
    required this.controller,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Enter message',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
      maxLines: 4,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your message';
        }
        return null;
      },
    );
  }
}
