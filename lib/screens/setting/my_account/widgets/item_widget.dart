import 'package:flutter/material.dart';

import 'package:expense_tracking/singleton/signleton.dart';
import 'package:expense_tracking/themes/app_theme.dart';
import 'package:expense_tracking/widgets/widgets.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.iconName,
    required this.title,
    required this.value,
    this.isObscure = false,
  }) : super(key: key);

  final String iconName;
  final String title;
  final String value;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: EdgeInsets.all(Metrics.instance.medium),
      child: Row(
        children: [
          SvgIconWidget(
            'assets/svgs/$iconName.svg',
            color: AppColors.darkBlue,
          ),
          Padding(
            padding: EdgeInsets.only(left: Metrics.instance.large),
            child: Text(title),
          ),
          const Spacer(),
          Text(
            isObscure ? value.replaceAll(value, '***********') : value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
