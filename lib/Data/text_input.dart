import "package:flutter/material.dart";

class TiComponent extends StatelessWidget {
  final bool isPassword;
  final String label;
  final String hint;
  final TextInputType keyboardType;
  final String Function(String) validate;
  final void Function(String) change;

  // ignore: use_key_in_widget_constructors
  const TiComponent({
    this.isPassword = false,
    required this.label,
    this.hint = "",
    this.keyboardType = TextInputType.text,
    required this.validate,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: isPassword,
      decoration: InputDecoration(
          labelText: label, hintText: hint, border: const OutlineInputBorder()),
      // validator: validate,
      onChanged: change,
    );
  }
}
