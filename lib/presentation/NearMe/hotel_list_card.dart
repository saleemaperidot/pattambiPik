import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';

class HotelListCard extends StatelessWidget {
  HotelListCard({
    super.key,
    required this.hotelName,
    required this.hotelDishesList,
    required this.Rating,
    required this.time,
    required this.rate,
  });
  final String hotelName;
  final List hotelDishesList;
  final int Rating;
  final int time;
  final double rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Stack(children: [
            Container(
                width: 100,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage('assets/images/biri.jpeg'),
                        fit: BoxFit.fill))),
          ]),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hotel Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Hotel dishes"),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    color: pikitGrey,
                    width: 230,
                    height: 1,
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          size: 15,
                          pikitStar,
                          color: pikitGreen,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          size: 15,
                          pikitLock,
                          color: pikitGreen,
                        ),
                        Text(
                          '30 MIN',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          size: 15,
                          pikitWallet,
                          //color: Colors.green,
                        ),
                        Text(
                          '100.00 FOR TWO',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "currently not accepting order",
                    style: TextStyle(color: pikitOrange, fontSize: 13),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
