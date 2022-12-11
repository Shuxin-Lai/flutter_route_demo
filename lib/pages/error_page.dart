import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:writer/router/route_utils.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home')),
      body: Container(
        child: Row(children: [
          Container(
              width: 200.0,
              child: Text(
                "error $message",
                overflow: TextOverflow.ellipsis,
              )),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context).goNamed(AppPage.home.toName);
              },
              child: Text("Home"))
        ]),
      ),
    );
  }
}
