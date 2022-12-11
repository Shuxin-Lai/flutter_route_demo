import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:writer/routes/routes_name.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .goNamed(RouteNames.account, params: {"type": "login"});
              },
              child: const Text("account - login")),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .goNamed(RouteNames.account, params: {"type": "register"});
              },
              child: const Text("account - register"))
        ]),
      ),
    );
  }
}
