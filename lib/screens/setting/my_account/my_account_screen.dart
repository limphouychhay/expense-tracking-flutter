import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracking/app_router/app_router.gr.dart';
import 'package:expense_tracking/screens/setting/my_account/widgets/widget.dart';
import 'package:expense_tracking/singleton/metrics.dart';
import 'package:expense_tracking/themes/app_theme.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.navigateBack();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: Metrics.instance.large,
              left: Metrics.instance.defaultPadding,
            ),
            child: Text(
              'Personal Info',
              style: TextStyle(
                fontSize: Metrics.instance.large,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: Metrics.instance.defaultPadding),
            child: Column(
              children: const [
                ItemWidget(
                  iconName: 'email',
                  title: 'Email',
                  value: 'limphouychhay@gmail.com',
                ),
                ItemWidget(
                  iconName: 'password',
                  title: 'Password',
                  isObscure: true,
                  value: 'limphouychhay@gmail.com',
                ),
                ItemWidget(
                  iconName: 'name',
                  title: 'Name',
                  value: 'Lim Phouychhay',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: Metrics.instance.large,
              left: Metrics.instance.defaultPadding,
            ),
            child: Text(
              'Linked Account',
              style: TextStyle(
                fontSize: Metrics.instance.large,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ItemWidget(
            iconName: 'google',
            title: 'Google',
            value: 'limphouychhay@gmail.com',
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: Metrics.instance.defaultPadding),
            child: Center(
              child: TextButton(
                onPressed: () {
                  context.replaceRoute(
                    const AuthRouter(
                      children: [
                        LoginRouter(),
                      ],
                    ),
                  );
                },
                child: Text(
                  'SIGN OUT',
                  style: TextStyle(
                    fontSize: Metrics.instance.medium,
                    color: AppColors.red,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
