import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:writer/router/route_utils.dart';
import 'package:writer/services/account_service.dart';
import 'package:writer/services/app_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appservice = Provider.of<AppService>(context);
    final accountService = Provider.of<AccountService>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('home')),
      body: Center(
        child: Column(children: [
          Text("isInitialize: ${appservice.isIntialized}"),
          Text("isLogin: ${accountService.isLogin}"),
          ElevatedButton(
              onPressed: () async {
                await accountService.logout();

                GoRouter.of(context).push('/history');
              },
              child: Text("log out and to history")),
          ElevatedButton(
              onPressed: () async {
                await accountService.logout();

                GoRouter.of(context).replaceNamed(AppPage.account.toName,
                    params: {"type": "login"});
              },
              child: Text("log out")),
        ]),
      ),
    );
  }
}
