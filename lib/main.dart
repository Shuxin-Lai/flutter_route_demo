import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:writer/core/init.dart';
import 'package:writer/router/app_router.dart';
import 'package:writer/services/account_service.dart';
import 'package:writer/services/app_service.dart';

void main() async {
  await init();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AppService appService;
  late AccountService accountService;

  @override
  void initState() {
    appService = AppService();
    accountService = AccountService();

    appService.onAppStart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppService>(create: (_) => appService),
        ChangeNotifierProvider<AccountService>(create: (_) => accountService),
        Provider<AppRouter>(
            create: (_) => AppRouter(appService, accountService)),
      ],
      child: Builder(
        builder: (context) {
          final GoRouter router =
              Provider.of<AppRouter>(context, listen: false).router;

          return MaterialApp.router(
            title: "Writer",
            routerConfig: router,
          );
        },
      ),
    );
  }
}
