import 'package:flutter/material.dart';

import 'package:expense_tracking/singleton/signleton.dart';
import 'package:expense_tracking/themes/app_theme.dart';
import 'package:expense_tracking/widgets/widgets.dart';

class CategoriesItemWidget extends StatelessWidget {
  const CategoriesItemWidget({
    Key? key,
    required this.iconName,
    required this.title,
  }) : super(key: key);

  final String iconName;
  final String title;

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
        ],
      ),
    );
  }
}
