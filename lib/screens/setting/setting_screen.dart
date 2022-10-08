import 'package:expense_tracking/singleton/signleton.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracking/widgets/widgets.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: Metrics.instance.medium),
          child: Column(
            children: [
              RowButtonWidget(
                iconName: 'account',
                title: 'My Account',
                onTap: () {},
              ),
              RowButtonWidget(
                iconName: 'wallet',
                title: 'My Wallets',
                onTap: () {},
              ),
            ],
          ),
        ),
        RowButtonWidget(
          iconName: 'categories',
          title: 'Categories',
          onTap: () {},
        ),
        RowButtonWidget(
          iconName: 'langauge',
          title: 'Langauge',
          onTap: () {},
        ),
        RowButtonWidget(
          iconName: 'theme',
          title: 'Themes',
          onTap: () {},
        ),
        RowButtonWidget(
          iconName: 'about',
          title: 'About',
          onTap: () {},
        ),
      ],
    );
  }
}
