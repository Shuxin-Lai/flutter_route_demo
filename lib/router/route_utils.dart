import 'package:go_router/go_router.dart';

enum AppPage {
  account,
  home,
  error,
  history,
}

extension AppPageExtension on AppPage {
  String get toPath {
    switch (this) {
      case AppPage.home:
        return "/";
      case AppPage.error:
        return "/error";
      case AppPage.account:
        return "/account/:type";
      case AppPage.history:
        return "/history";
      default:
        return "/";
    }
  }

  String get toName {
    switch (this) {
      case AppPage.home:
        return "home";
      case AppPage.error:
        return "error";
      case AppPage.account:
        return "account_type";
      case AppPage.history:
        return "history";
      default:
        return "home";
    }
  }
}

bool isOnAccountPage(GoRouterState state) {
  final path = state.path;

  return path != null && path.startsWith('/account');
}
