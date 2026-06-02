import 'package:flutter/material.dart';

/// Reusable button used across the app.
///
/// Future:
/// - Login Button
/// - Register Button
/// - Start Learning Button

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(onPressed: onPressed, child: Text(text)),
    );
  }
}
