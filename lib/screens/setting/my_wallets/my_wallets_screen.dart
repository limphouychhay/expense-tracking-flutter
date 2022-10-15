import 'package:auto_route/auto_route.dart';
import 'package:expense_tracking/singleton/metrics.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracking/widgets/widgets.dart';

import 'widgets/widget.dart';

class MyWalletsScreen extends StatelessWidget {
  const MyWalletsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Wallets'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.navigateBack();
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: Metrics.instance.defaultPadding,
            ),
            child: Column(
              children: const [
                WalletItemWidget(
                  iconName: 'currency',
                  title: 'USD Wallet',
                  value: 'USD',
                ),
                WalletItemWidget(
                  iconName: 'currency',
                  title: 'KHR Wallet',
                  value: 'RIEL',
                ),
              ],
            ),
          ),
          RowButtonWidget(
            iconName: 'wallet',
            title: 'Add new wallet',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
