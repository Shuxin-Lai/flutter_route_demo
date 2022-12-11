import 'package:go_router/go_router.dart';
import 'package:writer/pages/account/type.dart';
import 'package:writer/pages/error_page.dart';
import 'package:writer/pages/home_page.dart';
import 'package:writer/router/route_utils.dart';
import 'package:writer/services/account_service.dart';
import 'package:writer/services/app_service.dart';
import 'package:writer/utils/log_util.dart';
import 'package:writer/utils/string_util.dart';

class AppRouter {
  AppRouter(this.appService, this.accountService);

  GoRouter get router => _router;

  late final AppService appService;
  late final AccountService accountService;

  late final GoRouter _router = GoRouter(
    refreshListenable: appService,
    routes: [
      GoRoute(
        path: AppPage.home.toPath,
        name: AppPage.home.toName,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppPage.account.toPath,
        name: AppPage.account.toName,
        builder: (context, state) => Account(
            type: StringUtil.isEmtpy(state.params['type'])
                ? 'login'
                : state.params['type']!),
      ),
      GoRoute(
        path: AppPage.error.toPath,
        name: AppPage.error.toName,
        builder: (context, state) => ErrorPage(
          message: state.error != null
              ? state.error.toString()
              : state.extra.toString(),
        ),
      ),
    ],
    initialLocation: AppPage.home.toPath,
    errorBuilder: (context, state) {
      return ErrorPage(message: state.error.toString());
    },
    redirect: (context, state) {
      // final loginLocation = GoRouter.of(context).location;
      // final homeLocation =
      //     GoRouter.of(context).namedLocation(AppPage.home.toPath);
      if (!accountService.isLogin && !isOnAccountPage(state)) {
        return AppPage.account.toPath;
      }

      return null;
    },
  );
}
