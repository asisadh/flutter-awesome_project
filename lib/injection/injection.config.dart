// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injectable/data_connection_checker_module.dart';
import '../features/news/domain/usecases/get_latest_news.dart';
import 'injectable/http_client_injectable_module.dart';
import '../core/network/network_info.dart';
import '../features/news/presentation/bloc/news_bloc.dart';
import '../features/news/data/datasource/news_local_data_source.dart';
import '../features/news/data/datasource/news_remote_data_source.dart';
import '../features/news/data/repository/news_repository.dart';
import '../features/news/domain/repository/news_repository.dart';
import 'injectable/shared_preference_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final httpClientInjectableModule = _$HttpClientInjectableModule();
  final sharedPreferenceModule = _$SharedPreferenceModule();
  final dataConnectionCheckerModule = _$DataConnectionCheckerModule();
  gh.factory<Client>(() => httpClientInjectableModule.client);
  gh.factory<DataConnectionChecker>(
      () => sharedPreferenceModule.dataConnectionCheckerModule);
  gh.lazySingleton<NetworkInfo>(
      () => NetworkInfo(dataConnectionChecker: get<DataConnectionChecker>()));
  gh.lazySingleton<NewsRemoteDataSourceProtocol>(
      () => NewsRemoteDataSource(client: get<Client>()));
  gh.factoryAsync<SharedPreferences>(
      () => dataConnectionCheckerModule.sharedPreferences);
  gh.lazySingleton<NewsLocalDataSourceProtocol>(
      () => NewsLocalDataSource(sharedPreference: get<SharedPreferences>()));
  gh.lazySingleton<NewsRepositoryProtocol>(() => NewsRepository(
        remoteDataSource: get<NewsRemoteDataSourceProtocol>(),
        localDataSource: get<NewsLocalDataSourceProtocol>(),
        networkInfo: get<NetworkInfoProtocol>(),
      ));
  gh.lazySingleton<GetLatestNews>(
      () => GetLatestNews(repository: get<NewsRepositoryProtocol>()));
  gh.factory<NewsBloc>(() => NewsBloc(getLatestNews: get<GetLatestNews>()));
  return get;
}

class _$HttpClientInjectableModule extends HttpClientInjectableModule {}

class _$SharedPreferenceModule extends SharedPreferenceModule {}

class _$DataConnectionCheckerModule extends DataConnectionCheckerModule {}
