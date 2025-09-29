import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry_app/core/constants/app_colors.dart';

class CustomeTextField extends StatefulWidget {
  const CustomeTextField({
    super.key,
    required this.hint,
    required this.isPassword,
    required this.controller,
  });
  final TextEditingController controller;
  final String hint;
  final bool isPassword;

  @override
  State<CustomeTextField> createState() => _CustomeTextFieldState();
}

class _CustomeTextFieldState extends State<CustomeTextField> {
  late bool _obscureText;

  @override
  void initState() {
    _obscureText = widget.isPassword;
  }

  void _toggelPasswortd() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: AppColors.primary,
      cursorHeight: 15,
      validator: (value) {
        if (value == null || value.isEmpty) return 'please fill ${widget.hint}';
        null;
      },

      obscureText: _obscureText,

      decoration: InputDecoration(
        suffixIcon:
            widget.isPassword
                ? GestureDetector(
                  onTap: _toggelPasswortd,
                  child: Icon(CupertinoIcons.eye),
                )
                : null,

        fillColor: Colors.white,
        filled: true,

        hintText: widget.hint,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
