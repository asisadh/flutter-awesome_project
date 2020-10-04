import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app/assesment_app.dart';
import 'injection/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);

  /// for registering the factory.
  await Future.delayed(const Duration(seconds: 2));
  runApp(AssesmentApp());
}
