import 'package:expense_tracking/singleton/signleton.dart';
import 'package:flutter/material.dart';

class LanguageItemWidget extends StatelessWidget {
  const LanguageItemWidget({
    Key? key,
    required this.language,
    required this.checkState,
  }) : super(key: key);

  final String language;
  final ValueNotifier<bool> checkState;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Metrics.instance.medium,
        horizontal: Metrics.instance.defaultPadding,
      ),
      color: Colors.white,
      child: Row(
        children: [
          const Icon(Icons.language_outlined),
          Padding(
            padding: EdgeInsets.only(
              left: Metrics.instance.defaultPadding,
            ),
            child: Text(language),
          ),
          const Spacer(),
          checkState.value ? const Icon(Icons.check) : const SizedBox(),
        ],
      ),
    );
  }
}
