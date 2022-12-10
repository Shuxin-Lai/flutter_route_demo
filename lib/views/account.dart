import 'package:flutter/material.dart';

import '../routes/routes_name.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteNames.home);
              },
              child: Text("Home"))
        ]),
      ),
    );
  }
}
