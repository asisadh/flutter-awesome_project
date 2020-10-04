import 'package:assesment/presentation/theme/app_themes.dart';
import 'package:assesment/presentation/theme/bloc/theme_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:assesment/presentation/routes/router.gr.dart' as router;
import 'package:flutter_bloc/flutter_bloc.dart';

class AssesmentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: _buildWithTheme,
      ),
    );
  }

  @override
  Widget _buildWithTheme(BuildContext context, ThemeState state) {
    return MaterialApp(
      title: 'Assesment',
      theme: state.map(
        light: (_) => appThemeData[AppTheme.Light],
        dark: (_) => appThemeData[AppTheme.Dark],
      ),
      debugShowCheckedModeBanner: true,
      builder: ExtendedNavigator(
        router: router.Router(),
      ),
    );
  }
}
