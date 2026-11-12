import 'package:flutter/material.dart';

InputDecoration getInputDecoration({
  required String label,
  required String hint,
  IconData? mIcon,
  bool isPasswordField = false,
  bool isPasswordVisible = false,
  VoidCallback? onTap, // void Function()? onTap,
}) {
  return InputDecoration(
    labelText: label,
    hintText: hint,
    prefixIcon: mIcon != null ? Icon(mIcon) : null,
    suffixIcon: isPasswordField
        ? IconButton(
            onPressed: onTap,
            icon: Icon(
              isPasswordVisible
                  ? Icons.visibility_outlined
                  : Icons.visibility_off,
            ),
          )
        : null,
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(11),
      borderSide: BorderSide(color: Colors.green, width: 2),
    ),
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(11)),
  );
}
