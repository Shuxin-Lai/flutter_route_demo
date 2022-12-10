import 'package:flutter/material.dart';
import 'package:writer/layouts/default.dart';
import 'package:writer/routes/routes_name.dart';
import 'package:writer/views/404.dart';
import 'package:writer/views/account.dart';
import 'package:writer/views/home.dart';

export './routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final name = settings.name;
    if (name == RouteNames.home) {
      return MaterialPageRoute(
          builder: ((context) => const DefaultLayout(
                title: "Home",
                child: HomeView(),
              )));
    }

    if (name == RouteNames.account) {
      return MaterialPageRoute(
          builder: ((context) =>
              const DefaultLayout(title: "Account", child: AccountView())));
    }

    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: NotFoundView(),
      );
    });
  }
}
