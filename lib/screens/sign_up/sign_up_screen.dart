import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:expense_tracking/app_router/app_router.gr.dart';
import 'package:expense_tracking/singleton/signleton.dart';
import 'package:expense_tracking/widgets/widgets.dart';

class SignUpScreen extends HookWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailInputController =
        useTextEditingController();
    final TextEditingController passwordInputController =
        useTextEditingController();

    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Metrics.instance.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: Metrics.instance.huge),
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: Metrics.instance.extraLarge,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2.5,
                ),
              ),
            ),
            TextInputWidget(
              controller: emailInputController,
              hintText: 'Email',
              labelText: 'Email',
            ),
            TextInputWidget(
              controller: passwordInputController,
              hintText: 'Password',
              labelText: 'Password',
            ),
            Padding(
              padding: EdgeInsets.only(top: Metrics.instance.huge),
              child: PrimaryButtonWidget(
                title: 'SIGN UP',
                roundedCorner: true,
                onPressed: () {},
              ),
            ),
            const LoginSeparatorWidget(),
            LoginButtonWidget(
              onEmailPressed: () {},
              onFacebookPressed: () {},
              onGooglePressed: () {},
              onApplePressed: () {},
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Metrics.instance.large),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a user? ',
                    style: TextStyle(
                      fontSize: Metrics.instance.medium,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.navigateTo(
                        const AuthRouter(
                          children: [
                            LoginRouter(),
                          ],
                        ),
                      );
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: Metrics.instance.medium,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
