import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final String? Function(String?)? validator;
  final Color? hinttextcolor;
  final IconData? pefixIcon;
  const CustomTextField(
      {super.key,
      this.controller,
      this.hint,
      this.pefixIcon,
      this.label,
      this.validator,
      this.hinttextcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: TextFormField(
        cursorColor: AppConstants.blueColor,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(pefixIcon),
          labelText: label,
          hintText: hint,
          filled: true,
          fillColor: AppConstants.whiteColor2,
          labelStyle:
              TextStyle(color: hinttextcolor ?? AppConstants.borderColor),
          hintStyle: const TextStyle(color: AppConstants.borderColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(
              color: AppConstants.borderColor,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(
              color: AppConstants.borderColor,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(
              color: AppConstants.borderColor,
              width: 1,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 10.0,
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        validator: validator,
      ),
    );
  }
}
