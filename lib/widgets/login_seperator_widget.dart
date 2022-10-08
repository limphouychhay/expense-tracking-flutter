import 'package:flutter/material.dart';

import 'package:expense_tracking/singleton/signleton.dart';

class LoginSeparatorWidget extends StatelessWidget {
  const LoginSeparatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Metrics.instance.huge),
      child: Stack(
        alignment: Alignment.center,
        children: const [
          Divider(
            thickness: 2.5,
          ),
          CircleAvatar(
            child: Text('OR'),
          ),
        ],
      ),
    );
  }
}
