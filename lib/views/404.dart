import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

import '../routes/routes_name.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouteNames.home);
              },
              child: Text("home")),
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
