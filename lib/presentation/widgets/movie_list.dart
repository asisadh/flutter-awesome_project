import 'package:assesment/features/awesome/bloc/awesome_bloc.dart';
import 'package:assesment/features/movies/domain/entities/movie.dart';
import 'package:assesment/features/movies/presentation/bloc/movies_bloc.dart';
import 'package:assesment/presentation/routes/router.gr.dart';
import 'package:assesment/utils/colors.dart';
import 'package:assesment/utils/launch_in_browser.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loading.dart';

class MovieListContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => loadingPage(context),
          success: (movies) => buildSuccess(context, movies.list),
          failed: (_) => SizedBox.shrink(),
        );
      },
    );
  }

  Widget buildSuccess(BuildContext context, List<Movie> movies) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 30,
          ),
          child: Text(
            "Movies",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        MovieListWidget(movies: movies),
      ],
    );
  }
}

class MovieListWidget extends StatelessWidget {
  final List<Movie> movies;

  const MovieListWidget({
    Key key,
    @required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              child: MovieItem(
                movie: movies[index],
              ),
            );
          }),
    );
  }
}

class MovieItem extends StatelessWidget {
  final Movie movie;

  const MovieItem({
    Key key,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<AwesomeBloc>(context).add(AwesomeEvent.pressed());
        ExtendedNavigator.of(context).push(
          Routes.appWebView,
          arguments: AppWebViewArguments(
            url: movie.youtubeUrl,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: new BoxDecoration(
            borderRadius: new BorderRadius.all(Radius.circular(20.0)),
            color: Theme.of(context).cardColor,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(movie.image ?? "", fit: BoxFit.cover),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.name ?? "",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          "Movie",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "${movie.rating ?? 0}/10 IMDB",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
