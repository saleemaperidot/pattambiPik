import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: pikitBlack,
        ),
        backgroundColor: pikitWhite,
        elevation: 0,
        title: Text(
          "My ORDERS",
          style: TextStyle(color: pikitBlack),
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 5,
            );
          },
          itemBuilder: (context, index) {
            return Card(
              elevation: 10,
              shadowColor: pikitBlack,
              color: pikitWhite,
              margin: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Delivered",
                        style: TextStyle(color: pikitBlack),
                      ),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order Id",
                              style: TextStyle(
                                color: pikitGreen,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("2 years ago")
                          ]),
                    ),
                    Text("Hotel Name"),
                    Container(
                      color: pikitBaseGrey,
                      child: SizedBox(
                        height: 1,
                        width: double.infinity,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                "x1",
                                style: TextStyle(color: pikitBlack),
                              )),
                          Text("Chicken Mandi"),
                          SizedBox(
                            width: 150,
                          ),
                          Text("200 rs")
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("full"), Text("200 rs")],
                      ),
                    ),
                    Container(
                      color: pikitBaseGrey,
                      child: SizedBox(
                        height: 1,
                        width: double.infinity,
                      ),
                    ),
                    BottomRows(
                      first: "Restraunt charges",
                      Second: "rs",
                    ),
                    BottomRows(first: "Delivery Charges", Second: "23 rs"),
                    BottomRows(first: "TOTAL", Second: "572 rs"),
                    BottomRows(first: "Amount Remaining to pay", Second: "500"),
                    BottomRows(first: "PAYMENT MODE", Second: "COD")
                  ],
                  //  mainAxisSize: MainAxisSize.min,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BottomRows extends StatelessWidget {
  const BottomRows({
    Key? key,
    required this.first,
    required this.Second,
  }) : super(key: key);
  final String first;
  final String Second;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(first), Text(Second)],
      ),
    );
  }
}
