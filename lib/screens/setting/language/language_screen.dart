import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:expense_tracking/screens/setting/language/widgets/widget.dart';
import 'package:expense_tracking/singleton/signleton.dart';

class LanguageScreen extends HookWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final checkState = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.navigateBack();
          },
        ),
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(vertical: Metrics.instance.defaultPadding),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                checkState.value = !checkState.value;
              },
              child: LanguageItemWidget(
                language: 'English',
                checkState: checkState,
              ),
            ),
            LanguageItemWidget(
              language: 'ភាសាខ្មែរ',
              checkState: checkState,
            ),
          ],
        ),
      ),
    );
  }
}
