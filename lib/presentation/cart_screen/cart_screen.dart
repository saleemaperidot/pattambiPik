import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/NearMe/hotel_list_card.dart';
import 'package:pikit/presentation/NearMe/nearMe_screen.dart';
import 'package:pikit/presentation/bottom_navigation_widget.dart';
import 'package:pikit/presentation/commonWidgets/custom_elevatedbutton.dart';
import 'package:pikit/presentation/home.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final snackBar = SnackBar(content: Text(' HELLO!! THIS IS A SNACKBAR'));
  final checkOutsnakBar = SnackBar(
      backgroundColor: pikitWhite,
      content: Container(
        height: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "DELIVERY TO",
              style: TextStyle(
                  color: pikitBlack, fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              "address to which item is to delivered",
              style: TextStyle(color: pikitBlack),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: pikitGreen,
                    fixedSize: Size.fromWidth(500)),
                onPressed: () {},
                child: Text(
                  "PROCEED TO CHEKOUT",
                  style: TextStyle(
                      color: pikitWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
            // customElevstedButton(buttonName: "PROCEED TO CHECKOUT")
          ],
        ),
      ));
  @override
  Widget build(BuildContext context) {
    final _dimension = MediaQuery.of(context).size;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ScaffoldMessenger.of(context).showSnackBar(checkOutsnakBar);
    });
    // Scaffold.of(context).showBottomSheet(SnackBar);
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              navigationNotifier.value = 0;
            },
            icon: Icon(Icons.arrow_back_ios),
            color: pikitBlue,
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          iconTheme: IconThemeData(color: pikitBlack),
          //  backgroundColor: pikitWhite,
          title: Text(
            "CART",
            style: TextStyle(color: pikitBlack),
          ),
          actions: [Icon(Icons.home_outlined)]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              HotelListCard(
                  hotelName: "hotelName",
                  hotelDishesList: [],
                  Rating: 5,
                  time: 30,
                  rate: 400),
              Container(
                padding: EdgeInsets.all(7),
                height: _dimension.height * 0.3,
                child: Card(
                  //  elevation: 4,
                  shadowColor: pikitBlack,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(8),
                          child: Text("ITEM IN CART")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //  padding: EdgeInsets.all(20),
                          height: _dimension.height * 0.0005,
                          color: pikitBaseGrey,
                          width: _dimension.width * 0.85,
                        ),
                      ),
                      ListTile(
                        leading: Container(
                          width: 100, //_dimension.width * 20,
                          child: Row(children: [
                            Icon(
                              pikitfoodAvailable,
                              color: pikitRed,
                            ),
                            Text("Fish curry")
                          ]),
                        ),
                        title: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 40,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text("+"),
                                ),
                              ),
                              Container(
                                width: 40,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text("6"),
                                ),
                              ),
                              Container(
                                width: 40,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  child: Text("-"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        trailing: Text("rs 100"),
                      ),
                      divider(),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Write your sujestion and reviews about the restraunts",
                          style: TextStyle(
                              color: pikitBaseGrey,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Card(
                  // elevation: 10,
                  shadowColor: pikitBlack,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Text("TIP TO YOUR DELIVERY PARTNER")),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 0.5,
                        color: pikitBaseGrey,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                            "Thank your delivery partner to help you stay indoor.Support them through these tough times with a tip"),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            AmountButton(
                              amount: "10",
                            ),
                            AmountButton(
                              amount: "20",
                            ),
                            AmountButton(
                              amount: "30",
                            ),
                            AmountButton(
                              amount: "40",
                            ),
                            AmountButton(
                              amount: "other",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.bookmark_added_outlined),
                    title: Text("COUPON"),
                    trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: pikitGreen),
                        onPressed: () {},
                        child: Text(
                          "APPLY",
                        )),
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.7,
                    child: Column(
                      children: [
                        Text("BILL DETAILS"),
                        BillingDetailsCardListItem(
                          leadingText: "Item Total",
                          trailingText: "570.0",
                          weight: false,
                        ),
                        divider(),
                        BillingDetailsCardListItem(
                            weight: false,
                            leadingText: "Delivery Charge",
                            trailingText: "12"),
                        divider(),
                        BillingDetailsCardListItem(
                            weight: false,
                            leadingText: "GST",
                            trailingText: "12"),
                        divider(),
                        BillingDetailsCardListItem(
                            weight: true,
                            leadingText: "To Pay",
                            trailingText: "610"),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

// Here, we use the scaffold widget to show a snack bar.
    );
  }
}

class divider extends StatelessWidget {
  const divider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 0.5,
      color: pikitBaseGrey,
      width: double.infinity,
    );
  }
}

class BillingDetailsCardListItem extends StatelessWidget {
  const BillingDetailsCardListItem(
      {Key? key,
      required this.leadingText,
      required this.trailingText,
      required this.weight})
      : super(key: key);

  final String leadingText;
  final String trailingText;
  final bool weight;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        leadingText,
        style: TextStyle(
          fontWeight: weight ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      trailing: Text(trailingText),
    );
  }
}

class AmountButton extends StatelessWidget {
  const AmountButton({Key? key, required this.amount}) : super(key: key);
  final String amount;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () {}, child: Text(amount));
  }
}

//  final snackBar = SnackBar(
//             content: Text('Hey! This is a SnackBar message.'),
//             duration: Duration(seconds: 5),
//             action: SnackBarAction(
//               label: 'Undo',
//               onPressed: () {
//                 // Some code to undo the change.
//               },
//             ),
//           );
//           Scaffold.of(context).showSnackBar(snackBar);
