import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app/assesment_app.dart';
import 'injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);

  /// I'm being forced to do some delay before runApp, otherwise it says that my factories aren't registered at GetIt
  await Future.delayed(const Duration(seconds: 2));
  runApp(AssesmentApp());
}
