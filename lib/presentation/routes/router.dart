import 'package:assesment/presentation/pages/app_web_view.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:assesment/presentation/pages/home_screen.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: HomeScreen, initial: true),
    MaterialRoute(page: AppWebView),
  ],
)
class $Router {
  HomeScreen homeScreen;
}
