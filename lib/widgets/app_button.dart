import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red.shade900,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(
          vertical: 18,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
