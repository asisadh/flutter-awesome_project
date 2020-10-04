import 'package:assesment/features/restaurants/domain/entities/restaurant.dart';
import 'package:assesment/features/restaurants/presentation/bloc/restaurant_bloc.dart';
import 'package:assesment/presentation/routes/router.gr.dart';
import 'package:assesment/utils/launch_in_browser.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'loading.dart';

class ResturantListContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantBloc, RestaurantState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => loadingPage(context),
          success: (resturants) => buildSuccess(context, resturants.list),
          failed: (_) => SizedBox.shrink(),
        );
      },
    );
  }

  Widget buildSuccess(BuildContext context, List<Restaurant> restaurants) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 30,
          ),
          child: Text(
            "Resturants",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        ResturantListWidget(
          restaurants: restaurants,
        ),
      ],
    );
  }
}

class ResturantListWidget extends StatelessWidget {
  final List<Restaurant> restaurants;

  const ResturantListWidget({
    Key key,
    @required this.restaurants,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
          // Let the ListView know how many items it needs to build.
          itemCount: restaurants.length,
          scrollDirection: Axis.horizontal,
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            return Container(
              width: 300,
              child: ResturantItem(
                restaurant: restaurants[index],
              ),
            );
          }),
    );
  }
}

class ResturantItem extends StatelessWidget {
  final Restaurant restaurant;

  const ResturantItem({
    Key key,
    @required this.restaurant,
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
        child: Container(
          padding: EdgeInsets.all(20),
          color: Theme.of(context).cardColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name ?? "",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(),
              Text(
                restaurant.address ?? "",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(),
              SizedBox(
                height: 30,
                width: 100,
                child: FlatButton(
                  onPressed: () {
                    ExtendedNavigator.of(context).push(
                      Routes.appWebView,
                      arguments: AppWebViewArguments(
                        url:
                            "https://maps.google.com/?q=@${restaurant.lat},${restaurant.lon}&directionsmode=driving",
                      ),
                    );
                  },
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Text(
                    "Get Direction",
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
    );
  }
}
