import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:expense_tracking/screens/setting/categories/widgets/widget.dart';
import 'package:expense_tracking/singleton/signleton.dart';

class CategoriesScreen extends HookWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
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
              'Entertainment',
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
                CategoriesItemWidget(
                  iconName: 'categories',
                  title: 'Vacation',
                ),
                CategoriesItemWidget(
                  iconName: 'categories',
                  title: 'Party',
                ),
                CategoriesItemWidget(
                  iconName: 'categories',
                  title: 'Cinema',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Metrics.instance.large,
              left: Metrics.instance.defaultPadding,
            ),
            child: Text(
              'Food & Drinks',
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
                CategoriesItemWidget(
                  iconName: 'categories',
                  title: 'Food',
                ),
                CategoriesItemWidget(
                  iconName: 'categories',
                  title: 'Drink',
                ),
                CategoriesItemWidget(
                  iconName: 'categories',
                  title: 'Coffee',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: Metrics.instance.large,
              left: Metrics.instance.defaultPadding,
            ),
            child: Text(
              'Housing',
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
                CategoriesItemWidget(
                  iconName: 'categories',
                  title: 'Housing',
                ),
                CategoriesItemWidget(
                  iconName: 'categories',
                  title: 'Rent',
                ),
                CategoriesItemWidget(
                  iconName: 'categories',
                  title: 'Loan',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
