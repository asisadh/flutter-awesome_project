import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class DataConnectionCheckerModule {
  Future<SharedPreferences> get sharedPreferences async =>
      SharedPreferences.getInstance();
}
