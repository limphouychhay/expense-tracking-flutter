import 'package:flutter/material.dart';

import 'package:expense_tracking/singleton/signleton.dart';
import 'package:expense_tracking/themes/app_theme.dart';
import 'package:expense_tracking/widgets/widgets.dart';

class RowButtonWidget extends StatelessWidget {
  const RowButtonWidget({
    Key? key,
    required this.iconName,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String iconName;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
              child: Text(
                title,
                style: TextStyle(
                  fontSize: Metrics.instance.defaultFontSize,
                ),
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, size: 20),
          ],
        ),
      ),
    );
  }
}
