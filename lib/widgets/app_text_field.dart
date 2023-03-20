import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String? label;
  final String? hintText;

  final bool isPassword;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final bool enabled;

  final TextInputType? keyboardType;
  const AppTextField({
    super.key,
    this.label,
    this.keyboardType,
    this.isPassword = false,
    this.controller,
    this.enabled = true,
    this.validator,
    this.hintText,
  });

  @override
  AppTextFieldState createState() => AppTextFieldState();
}

class AppTextFieldState extends State<AppTextField> {
  bool _obscureText = false;

  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  void initState() {
    _obscureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 5,
          )
        ],
        TextFormField(
          validator: widget.validator,
          enabled: widget.enabled,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          obscureText: _obscureText,
          decoration: InputDecoration(
            hintText: widget.hintText,
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: _togglePassword,
                  )
                : null,
          ),
        )
      ],
    );
  }
}
