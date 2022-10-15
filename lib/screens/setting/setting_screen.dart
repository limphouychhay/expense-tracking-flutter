import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracking/app_router/app_router.gr.dart';
import 'package:expense_tracking/singleton/signleton.dart';
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
                onTap: () {
                  context.navigateTo(
                    const SettingRoute(
                      children: [
                        MyAccountRouter(),
                      ],
                    ),
                  );
                },
              ),
              RowButtonWidget(
                iconName: 'wallet',
                title: 'My Wallets',
                onTap: () {
                  context.navigateTo(
                    const SettingRoute(
                      children: [
                        MyWalletsRouter(),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        RowButtonWidget(
          iconName: 'categories',
          title: 'Categories',
          onTap: () {
            context.navigateTo(
              const SettingRoute(
                children: [
                  CategoriesRouter(),
                ],
              ),
            );
          },
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
