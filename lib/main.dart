import 'package:auto_route/auto_route.dart';
import 'package:expense_tracking/app_router/app_router.gr.dart';
import 'package:expense_tracking/bloc/authentication/authentication_bloc.dart';
import 'package:expense_tracking/themes/app_theme.dart';
import 'package:expense_tracking/utils/utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.instance.registerSingleton<AppRouter>(AppRouter());

  await dotenv.load(fileName: '.env');

  await DeviceInfoHelper.initialize();

  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  HydratedBlocOverrides.runZoned(
    () => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
              create: (context) => AuthenticationBloc()),
        ],
        child: EasyLocalization(
          supportedLocales: const [
            Locale('en'),
            Locale('km'),
          ],
          startLocale: const Locale('en'),
          path: 'assets/translations',
          fallbackLocale: const Locale('en'),
          useOnlyLangCode: true,
          child: const MyApp(),
        ),
      ),
    ),
    storage: storage,
    blocObserver: AppBlocObserver(),
  );

  // Lock rotation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GetIt.instance<AppRouter>();
    return MaterialApp.router(
      title: 'Bloc Boilerplate',
      theme: AppTheme.define(),
      routeInformationParser: router.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(router),
      builder: (context, child) {
        return GestureDetector(
          onTap: () => KeyboardHidden.hideKeyboard(context),
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
