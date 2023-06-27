import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/presentation/NearMe/hotel_list_card.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen(
      {super.key,
      required this.restrauntImage,
      required this.restrauntName,
      required this.rate,
      required this.rating,
      required this.time,
      required this.isActive,
      required this.slug,
      required this.description,
      required this.productImage,
      required this.productName});
  final String restrauntImage;
  final String restrauntName;
  final String rating;
  final String rate;
  final String time;
  final int isActive;
  final String slug;
  final String description;
  final String productName;
  final String productImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SafeArea(
            child: Container(
          child: Column(
            children: [
              HotelListCard(
                  hotelName: restrauntName,
                  hotelDishesList: description,
                  Rating: rating,
                  time: time,
                  rate: rate,
                  imageUrl: restrauntImage,
                  isActive: isActive),
              Card(
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  NetworkImage(Apis.BASE_URL + productImage))),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "$productName \n price\t ${rate}",
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(
                          pikitfoodAvailable,
                          color: pikitRed,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        OutlinedButton(onPressed: () {}, child: Text("-")),
                        kwidth,
                        OutlinedButton(onPressed: () {}, child: Text("+"))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
