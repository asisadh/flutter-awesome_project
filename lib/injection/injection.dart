import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../injection/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String environment) async {
  $initGetIt(getIt, environment: environment);
  await getIt.allReady();
}
