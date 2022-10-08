import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    Key? key,
    required this.onEmailPressed,
    required this.onFacebookPressed,
    required this.onGooglePressed,
    required this.onApplePressed,
  }) : super(key: key);

  final Function onEmailPressed;
  final Function onFacebookPressed;
  final Function onGooglePressed;
  final Function onApplePressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SignInButton(
            Buttons.Email,
            onPressed: onEmailPressed,
          ),
          SignInButton(
            Buttons.Facebook,
            onPressed: onFacebookPressed,
          ),
          SignInButton(
            Buttons.Google,
            onPressed: onGooglePressed,
          ),
          SignInButton(
            Buttons.Apple,
            onPressed: onApplePressed,
          )
        ],
      ),
    );
  }
}
