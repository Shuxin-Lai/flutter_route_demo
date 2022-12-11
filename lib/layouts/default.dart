import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({super.key, required this.child, required this.title});

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(title),
        leading: Icon(Icons.back_hand),
      ),
      body: child,
    );
  }
}
