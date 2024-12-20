import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    required this.obscureText,
    required this.formProperty,
    required this.formValues,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      //initialValue: 'Introduce tu nombre',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.verified_user_outlined),
        icon: Icon(icon),
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}
