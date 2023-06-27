import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/presentation/cart_screen/cart_screen.dart';

class HotelListCard extends StatelessWidget {
  HotelListCard(
      {super.key,
      required this.hotelName,
      required this.hotelDishesList,
      required this.Rating,
      required this.time,
      required this.rate,
      required this.imageUrl,
      required this.isActive});
  final int isActive;
  final String hotelName;
  final String hotelDishesList;
  final String Rating;
  final String time;
  final String rate;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final _dimensions = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: pikitWhite,
        width: double.infinity,
        child: Row(
          children: [
            Container(
                width: // double.infinity,
                    _dimensions.width * 0.30,
                height: _dimensions.height * 0.13,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(Apis.BASE_URL + imageUrl),
                        //AssetImage('assets/images/biri.jpeg'),
                        fit: BoxFit.fill))),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // width: MediaQuery.of(context).size.width,
                        child: Text(
                          hotelName,
                          textWidthBasis: TextWidthBasis.longestLine,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 220,
                        child: Text(
                          hotelDishesList,
                          maxLines: 1,
                          // softWrap: true,
                          //textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          //style: const TextStyle(overflow: TextOverflow.clip),
                        ),
                      ),
                      // SizedBox(
                      //   height: 9,
                      // ),
                      isActive == 1
                          ? const Text("")
                          : const Text(
                              "currently not accepting order",
                              style:
                                  TextStyle(color: pikitOrange, fontSize: 13),
                            ),
                      const Divider(
                        color: pikitBaseGrey,
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            size: 15,
                            pikitStar,
                            color: pikitGreen,
                          ),
                          Text(
                            rate,
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            size: 15,
                            pikitLock,
                            color: pikitGreen,
                          ),
                          Text(
                            time,
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Icon(
                            size: 15,
                            pikitWallet,
                            //color: Colors.green,
                          ),
                          Text(
                            Rating,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
