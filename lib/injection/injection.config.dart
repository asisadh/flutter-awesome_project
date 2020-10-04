// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/awesome/bloc/awesome_bloc.dart';
import 'injectable/data_connection_checker_module.dart';
import '../features/movies/domain/usecases/get_latest_movie.dart';
import '../features/news/domain/usecases/get_latest_news.dart';
import '../features/github/domain/usecases/get_list_of_repo.dart';
import '../features/restaurants/domain/usecases/getRestaurants.dart';
import '../features/github/data/data_source/github_remote_datasource.dart';
import '../core/git_hub_repo/git_hub_repo.dart';
import '../features/github/presentation/bloc/github_bloc.dart';
import '../features/github/data/repository/github_repository.dart';
import '../features/github/domain/repository/github_repository.dart';
import 'injectable/http_client_injectable_module.dart';
import '../features/movies/data/datasource/movie_remote_data_source.dart';
import '../features/movies/data/repository/movie_repository.dart';
import '../features/movies/domain/repository/movie_repository.dart';
import '../features/movies/presentation/bloc/movies_bloc.dart';
import '../core/network/network_info.dart';
import '../features/news/presentation/bloc/news_bloc.dart';
import '../features/news/data/datasource/news_local_data_source.dart';
import '../features/news/data/datasource/news_remote_data_source.dart';
import '../features/news/data/repository/news_repository.dart';
import '../features/news/domain/repository/news_repository.dart';
import '../features/restaurants/presentation/bloc/restaurant_bloc.dart';
import '../features/restaurants/data/repository/resturant_repository.dart';
import '../features/restaurants/domain/repositories/restaurant_repository.dart';
import '../features/restaurants/data/datasource/resturants_remote_data_source.dart';
import '../core/places/restaurants_via_third_party_api.dart';
import 'injectable/shared_preference_module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final httpClientInjectableModule = _$HttpClientInjectableModule();
  final dataConnectionCheckerModule = _$DataConnectionCheckerModule();
  final sharedPreferenceModule = _$SharedPreferenceModule();
  gh.factory<AwesomeBloc>(() => AwesomeBloc());
  gh.factory<Client>(() => httpClientInjectableModule.client);
  gh.factory<DataConnectionChecker>(
      () => dataConnectionCheckerModule.dataConnectionCheckerModule);
  gh.lazySingleton<GitHubRepoProtocol>(() => GitHubRepo(client: get<Client>()));
  gh.lazySingleton<MovieRemoteDataSourceProtocol>(
      () => MovieRemoteDataSource());
  gh.lazySingleton<MovieRepositoryProtocol>(
      () => MovieRepository(dataSource: get<MovieRemoteDataSourceProtocol>()));
  gh.lazySingleton<NetworkInfoProtocol>(
      () => NetworkInfo(dataConnectionChecker: get<DataConnectionChecker>()));
  gh.lazySingleton<NewsRemoteDataSourceProtocol>(
      () => NewsRemoteDataSource(client: get<Client>()));
  gh.lazySingleton<ResturantsFromPlacesProtocol>(
      () => ResturantsFromPlaces(client: get<Client>()));
  final sharedPreferences = await sharedPreferenceModule.prefs;
  gh.factory<SharedPreferences>(() => sharedPreferences);
  gh.lazySingleton<GetLatestMovies>(
      () => GetLatestMovies(repository: get<MovieRepositoryProtocol>()));
  gh.lazySingleton<GitHubRemoteDataSourceProtocol>(
      () => GitHubRemoteDataSource(gitHubRepo: get<GitHubRepoProtocol>()));
  gh.lazySingleton<GithubRepositoryProtocol>(() => GithubRepository(
      remoteDataSource: get<GitHubRemoteDataSourceProtocol>()));
  gh.factory<MoviesBloc>(
      () => MoviesBloc(getLatestMovies: get<GetLatestMovies>()));
  gh.lazySingleton<NewsLocalDataSourceProtocol>(
      () => NewsLocalDataSource(sharedPreference: get<SharedPreferences>()));
  gh.lazySingleton<NewsRepositoryProtocol>(() => NewsRepository(
        remoteDataSource: get<NewsRemoteDataSourceProtocol>(),
        localDataSource: get<NewsLocalDataSourceProtocol>(),
        networkInfo: get<NetworkInfoProtocol>(),
      ));
  gh.lazySingleton<ResturantRemoteDataSourceProtocol>(() =>
      ResturantRemoteDataSource(
          resturantsFromPlaces: get<ResturantsFromPlacesProtocol>()));
  gh.lazySingleton<GetLatestNews>(
      () => GetLatestNews(repository: get<NewsRepositoryProtocol>()));
  gh.lazySingleton<GetListOfRepo>(
      () => GetListOfRepo(repository: get<GithubRepositoryProtocol>()));
  gh.factory<GithubBloc>(() => GithubBloc(getListOfRepo: get<GetListOfRepo>()));
  gh.factory<NewsBloc>(() => NewsBloc(getLatestNews: get<GetLatestNews>()));
  gh.lazySingleton<RestaurantRepositoryProtocol>(() => RestaurantRepository(
      remoteDataSourceProtocol: get<ResturantRemoteDataSourceProtocol>()));
  gh.lazySingleton<GetResturants>(
      () => GetResturants(repository: get<RestaurantRepositoryProtocol>()));
  gh.factory<RestaurantBloc>(
      () => RestaurantBloc(getResturants: get<GetResturants>()));
  return get;
}

class _$HttpClientInjectableModule extends HttpClientInjectableModule {}

class _$DataConnectionCheckerModule extends DataConnectionCheckerModule {}

class _$SharedPreferenceModule extends SharedPreferenceModule {}
