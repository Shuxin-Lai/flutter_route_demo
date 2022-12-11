import 'dart:isolate';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:writer/layouts/default.dart';
import 'package:writer/routes/routes_name.dart';
import 'package:writer/views/account.dart';
import 'package:writer/views/home.dart';

var observer = NavigatorObserver();

final GoRouter router = GoRouter(
  observers: [observer],
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: RouteNames.home,
      builder: (BuildContext context, GoRouterState state) {
        return const DefaultLayout(child: HomeView(), title: "home");
      },
      redirect: (context, state) {
        final isOk = Random().nextBool();
        if (isOk) {
          context.replaceNamed(RouteNames.account, params: {'type': 'login'});
        }
        return null;
      },
    ),
    GoRoute(
      path: "/account/:type",
      name: RouteNames.account,
      builder: (context, state) => DefaultLayout(
          title: "Account",
          child: AccountView(
            type: state.params["type"] as String,
          )),
    )
  ],
);
