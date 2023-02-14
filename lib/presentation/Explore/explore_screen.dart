import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/presentation/NearMe/hotel_list_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          CupertinoSearchTextField(),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return HotelListCard(
                    hotelName: "hotelName",
                    hotelDishesList: [],
                    Rating: 4,
                    time: 40,
                    rate: 5,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: 10),
          )
        ],
      ),
    ));
  }
}
