import 'package:assesment/features/github/presentation/bloc/github_bloc.dart';
import 'package:assesment/features/movies/presentation/bloc/movies_bloc.dart';
import 'package:assesment/features/news/presentation/bloc/news_bloc.dart';
import 'package:assesment/features/restaurants/presentation/bloc/restaurant_bloc.dart';
import 'package:assesment/injection/injection.dart';
import 'package:assesment/presentation/theme/app_themes.dart';
import 'package:assesment/presentation/theme/bloc/theme_bloc.dart';
import 'package:assesment/presentation/widgets/github_list.dart';
import 'package:assesment/presentation/widgets/movie_list.dart';
import 'package:assesment/presentation/widgets/news_list.dart';
import 'package:assesment/presentation/widgets/resturant_list.dart';
import 'package:assesment/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Some App"),
      ),
      body: Container(
        // height: double.maxFinite,
        child: buildHomePageWidget(context),
      ),
    );
  }

  MultiBlocProvider buildHomePageWidget(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsBloc>(
          create: (context) =>
              getIt<NewsBloc>()..add(const NewsEvent.fetchNews()),
        ),
        BlocProvider<MoviesBloc>(
          create: (context) =>
              getIt<MoviesBloc>()..add(const MoviesEvent.fetchMovies()),
        ),
        BlocProvider<RestaurantBloc>(
          create: (context) => getIt<RestaurantBloc>()
            ..add(const RestaurantEvent.fetchRestaurant()),
        ),
        BlocProvider<GithubBloc>(
          create: (context) =>
              getIt<GithubBloc>()..add(const GithubEvent.fetchRepo()),
        ),
      ],
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                NewsListContainerWidget(),
                MovieListContainerWidget(),
                ResturantListContainerWidget(),
                GitHubListContainerWidget(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                margin: const EdgeInsets.only(bottom: 20, right: 20),
                // child: FloatingActionButton.extended(
                //   backgroundColor: ,
                //   foregroundColor: Colors.black,
                //   onPressed: () {
                //     // Respond to button press
                //     BlocProvider.of<ThemeBloc>(context)
                //         .add(ThemeEvent.changeTheme());
                //   },
                //   icon: Icon(Icons.add_to_home_screen),
                //   label: Text(
                //     '',
                //     style: Theme.of(context).textTheme.headline1,
                //   ),
                // ),
                child: FloatingActionButton(
                  backgroundColor: Theme.of(context).backgroundColor,
                  foregroundColor: Theme.of(context).buttonColor,
                  onPressed: () {
                    BlocProvider.of<ThemeBloc>(context)
                        .add(ThemeEvent.changeTheme());
                  },
                  child: Icon(Icons.add),
                )),
          )
        ],
      ),
    );
  }
}
