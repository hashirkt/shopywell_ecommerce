import 'package:flutter/material.dart';
import 'package:shopywell/utils/theme.dart';

class TextFieldWidget extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextEditingController controller;
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.controller,
    this.obscureText = false,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late bool isObscured;

  @override
  void initState() {
    super.initState();
    isObscured = widget.obscureText;
  }

  void _toggleVisibility() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText ? isObscured : false,
      decoration: InputDecoration(
        fillColor: AppTheme.secondaryColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppTheme.black, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppTheme.borderColor, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: Icon(widget.prefixIcon, size: 24),
        suffixIcon:
            widget.obscureText
                ? GestureDetector(
                  onTap: _toggleVisibility,
                  child: Icon(
                    isObscured
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 24,
                  ),
                )
                : null,
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.displaySmall,
      ),
      style: Theme.of(context).textTheme.displayMedium,
    );
  }
}
