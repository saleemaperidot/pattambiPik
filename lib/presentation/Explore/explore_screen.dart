import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/search/bloc/search_bloc.dart';
import 'package:pikit/core/debounce.dart';
import 'package:pikit/presentation/NearMe/hotel_list_card.dart';
import 'dart:developer';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});
  final _debouncer = Debouncer(milliseconds: 500);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context)
          .add(SearchEvent.loadSearchResults(query: ""));
    });
    return SafeArea(child: SingleChildScrollView(
      child: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          log("-searchstate${state}");
          return Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CupertinoSearchTextField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      return;
                    }
                    // BlocProvider.of<SearchBloc>(context)
                    //     .add(SearchMovie(movieQuery: value));
                    _debouncer.run(() {
                      BlocProvider.of<SearchBloc>(context)
                          .add(SearchEvent.loadSearchResults(query: value));
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text("RESTRAUNTS"),
                ListView.separated(
                  itemCount: state.restraunts.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return HotelListCard(
                      isActive: 0,
                      imageUrl: state.restraunts[index].image!,
                      hotelName: state.restraunts[index].name!,
                      hotelDishesList: state.restraunts[index].description!,
                      Rating: state.restraunts[index].rating!,
                      time: state.restraunts[index].deliveryTime!,
                      rate: state.restraunts[index].rating!,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                ),
                Text("ITEMS"),
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return HotelListCard(
                        isActive: 0,
                        imageUrl: state.item[index].image!,
                        hotelName: state.item[index].name!,
                        hotelDishesList: "",
                        Rating: "4",
                        time: "40",
                        rate: "5",
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: state.item.length)
              ],
            ),
          );
        },
      ),
    ));
  }
}
