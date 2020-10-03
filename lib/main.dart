import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'app/assesment_app.dart';
import 'injection/injection.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AssesmentApp());
}
