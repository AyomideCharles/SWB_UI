import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final bool showSuffixIcon;
  final TextInputType inputType;
  final IconData? suffixIcon;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.showSuffixIcon = false,
    this.suffixIcon,
    this.inputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      keyboardType: inputType,
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
          borderSide: const BorderSide(color: Color(0xFF515151)),
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
