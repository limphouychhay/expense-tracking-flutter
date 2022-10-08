import 'package:expense_tracking/themes/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracking/singleton/signleton.dart';

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Metrics.instance.large),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0.7,
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(Metrics.instance.borderRadius),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0.7,
              color: AppColors.primary,
            ),
            borderRadius: BorderRadius.circular(Metrics.instance.borderRadius),
          ),
        ),
      ),
    );
  }
}
