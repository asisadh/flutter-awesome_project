import 'package:assesment/features/github/domain/entities/git_hub.dart';
import 'package:assesment/features/github/presentation/bloc/github_bloc.dart';
import 'package:assesment/presentation/routes/router.gr.dart';
import 'package:assesment/utils/colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loading.dart';

class GitHubListContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GithubBloc, GithubState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => loadingPage(context),
          success: (repo) => buildSuccess(context, repo.list),
          failed: (_) => SizedBox.shrink(),
        );
      },
    );
  }

  Widget buildSuccess(BuildContext context, List<Github> repo) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 30,
          ),
          child: Text(
            "Github Repo",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        GitHubListWidget(
          repo: repo,
        ),
      ],
    );
  }
}

class GitHubListWidget extends StatelessWidget {
  final List<Github> repo;

  const GitHubListWidget({
    Key key,
    @required this.repo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.zero,
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: repo.length,
          itemBuilder: (context, index) {
            return Container(
              height: 120,
              child: GitHubItem(
                github: repo[index],
              ),
            );
          }),
    );
  }
}

class GitHubItem extends StatelessWidget {
  final Github github;

  const GitHubItem({
    Key key,
    @required this.github,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ExtendedNavigator.of(context).push(
          Routes.appWebView,
          arguments: AppWebViewArguments(
            url: github.repoUrl,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                github.fullName ?? "",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                github.description ?? "",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
