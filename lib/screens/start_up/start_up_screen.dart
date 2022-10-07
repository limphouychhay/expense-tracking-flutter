import 'package:expense_tracking/app_router/app_router.gr.dart';
import 'package:expense_tracking/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StartUpScreen extends HookWidget {
  const StartUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // useEffect(() {
    //   final authState = context.read<AuthenticationBloc>().state;

    //   if (authState is Authenticated) {
    //     context.read<AuthenticationBloc>().add(const AuthenticationEvent.autoLogin());
    //   } else {
    //     context.replaceRoute(const AuthRouter());
    //   }

    //   return () {};
    // }, const []);

    return Scaffold(
      appBar: AppBar(title: const Text('StartUpScreen')),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: () {
            LoadingModal.show();
            KeyboardHidden.hideKeyboard(context);
            Future.delayed(const Duration(seconds: 1), () {
              LoadingModal.hide();
              context.replaceRoute(const DashboardRouter());
            });
          },
          child: const Text('Go to Login Screen'),
        ),
      ),
    );
  }
}
