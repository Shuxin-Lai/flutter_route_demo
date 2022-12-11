import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes_name.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context).goNamed(RouteNames.home);
              },
              child: Text("type = $type, Home"))
        ]),
      ),
    );
  }
}
