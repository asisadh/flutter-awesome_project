import 'package:assesment/presentation/pages/app_web_view.dart';
import 'package:assesment/presentation/pages/splash_screen.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:assesment/presentation/pages/home_screen.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: HomeScreen),
    MaterialRoute(page: AppWebView),
  ],
)
class $Router {
  SplashScreen splashScreen;
}
