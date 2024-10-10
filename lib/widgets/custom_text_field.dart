import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool showSuffixIcon;
  final TextInputType inputType;
  final IconData? suffixIcon;
  final double borderWidth;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.showSuffixIcon = false,
    this.suffixIcon,
    this.inputType = TextInputType.text,
    this.borderWidth = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: inputType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF292929),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFFA4A4A4),
        ),
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: const Color(0xFF515151), width: borderWidth),
          borderRadius: BorderRadius.circular(8.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xFF515151),
              width: borderWidth), // For focused state
          borderRadius: BorderRadius.circular(8.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: const Color(0xFF515151),
              width: borderWidth), // For enabled state
          borderRadius: BorderRadius.circular(8.r),
        ),
        suffixIcon: showSuffixIcon
            ? Icon(
                suffixIcon,
                color: const Color(0xFF515151),
              )
            : null,
      ),
    );
  }
}
