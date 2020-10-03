import 'package:assesment/features/news/presentation/bloc/news_bloc.dart';
import 'package:assesment/injection/injection.dart';
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
        color: Palette.background,
        child: buildHomePageWidget(),
      ),
    );
  }

  MultiBlocProvider buildHomePageWidget() {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NewsBloc>(
          create: (context) =>
              getIt<NewsBloc>()..add(const NewsEvent.fetchNews()),
        ),
      ],
      child: SingleChildScrollView(
        child: Column(
          children: [
            NewsListContainerWidget(),
          ],
        ),
      ),
    );
  }
}