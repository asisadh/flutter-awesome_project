import 'package:assesment/features/news/domain/entities/article.dart';
import 'package:assesment/features/news/domain/entities/article_list.dart';
import 'package:assesment/features/news/presentation/bloc/news_bloc.dart';
import 'package:assesment/presentation/routes/router.gr.dart';
import 'package:assesment/presentation/widgets/loading.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsListContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => loadingPage(context),
          success: (articles) => buildSuccess(context, articles.list),
          failed: (_) => SizedBox.shrink(),
        );
      },
    );
  }

  Widget buildSuccess(BuildContext context, ArticlesList list) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "News",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        NewsListWidget(
          list: list,
        ),
      ],
    );
  }
}

class NewsListWidget extends StatelessWidget {
  final ArticlesList list;

  const NewsListWidget({
    Key key,
    @required this.list,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView.builder(
          // Let the ListView know how many items it needs to build.
          itemCount: list?.articles?.length ?? 0,
          scrollDirection: Axis.horizontal,
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            return Container(
              width: 300,
              child: NewsItem(
                article: list.articles[index],
              ),
            );
          }),
    );
  }
}

class NewsItem extends StatelessWidget {
  final Article article;

  const NewsItem({
    Key key,
    @required this.article,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // elevation: 2,
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          children: [
            Expanded(
              child: Image.network(article.image ?? "", fit: BoxFit.cover),
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(20),
                color: Theme.of(context).cardColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article.title ?? "N/A",
                      style: Theme.of(context).textTheme.headline1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      article.description ?? "N/A",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      article.source ?? "",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 30,
                      width: 90,
                      child: FlatButton(
                        onPressed: () {
                          ExtendedNavigator.of(context).push(
                            Routes.appWebView,
                            arguments: AppWebViewArguments(
                              url: article.url,
                            ),
                          );
                        },
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        child: Text(
                          "view more",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
