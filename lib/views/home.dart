import 'package:flutter/material.dart';
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
                Navigator.of(context).pushNamed(RouteNames.account);
              },
              child: Text("account"))
        ]),
      ),
    );
  }
}
