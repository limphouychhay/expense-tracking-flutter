import 'package:flutter/material.dart';

import 'package:expense_tracking/singleton/signleton.dart';
import 'package:expense_tracking/themes/app_theme.dart';

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget({
    Key? key,
    this.color = AppColors.primary,
    required this.title,
    required this.onPressed,
    required this.roundedCorner,
    this.borderRadius = 8.0,
    this.textColor = AppColors.white,
    this.icon,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final Color? color;
  final Color? textColor;
  final bool roundedCorner;
  final double borderRadius;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: Metrics.instance.buttonHeight,
      minWidth: double.infinity,
      shape: roundedCorner == true
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            )
          : null,
      color: color,
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  icon,
                  color: textColor,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                    fontSize: Metrics.instance.large,
                  ),
                ),
              ],
            )
          : Text(
              title,
              style: TextStyle(
                color: textColor,
                fontSize: Metrics.instance.large,
              ),
            ),
    );
  }
}
