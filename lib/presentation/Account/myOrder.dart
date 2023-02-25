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
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              pikitarrowBack,
              color: pikitBlue,
            )),
        iconTheme: const IconThemeData(
          color: pikitBlack,
        ),
        // backgroundColor: pikitWhite,
        elevation: 0,
        title: const Text(
          "MY ORDERS",
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
              // margin: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: _width * 0.8,
                height: _height * 0.6,
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
                    ListTile(
                      dense: true,
                      //contentPadding: EdgeInsets.symmetric(),
                      visualDensity: VisualDensity(vertical: -3),
                      // minVerticalPadding: 1,
                      leading: Text("Order Id"),
                      trailing: Text("2 years ago"),
                    ),
                    const ListTile(leading: Text("Hotel Name")),
                    horizontal_line,
                    ListTile(
                      leading: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "x1",
                            style: TextStyle(color: pikitBlack),
                          )),
                      title: Text("Chicken Mandi"),
                      trailing: Text("200rs"),
                    ),
                    ListTile(
                      style: ListTileStyle.list,
                      leading: Text("full"),
                      trailing: Text("200 rs"),
                    ),
                    horizontal_line,
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
