import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

abstract class NetworkInfoProtocol {
  Future<bool> get isConnected;
}

@lazySingleton
class NetworkInfo implements NetworkInfoProtocol {
  final DataConnectionChecker dataConnectionChecker;

  NetworkInfo({@required this.dataConnectionChecker});

  @override
  Future<bool> get isConnected => dataConnectionChecker.hasConnection;
}
