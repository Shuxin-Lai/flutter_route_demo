import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:writer/router/route_utils.dart';
import 'package:writer/services/account_service.dart';

class Account extends StatelessWidget {
  const Account({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    final AccountService accountService = Provider.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('account')),
      body: Center(
        child: Column(children: [
          Text("type: $type"),
          ElevatedButton(
              onPressed: () async {
                await accountService.login();

                GoRouter.of(context).replaceNamed(AppPage.home.toName);
              },
              child: Text("log in")),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context).replaceNamed(AppPage.home.toName);
              },
              child: Text("register"))
        ]),
      ),
    );
  }
}
