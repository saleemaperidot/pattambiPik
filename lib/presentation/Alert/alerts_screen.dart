import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/NearMe/nearMe_screen.dart';
import 'package:pikit/presentation/bottom_navigation_widget.dart';
import 'package:pikit/presentation/home.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            navigationNotifier.value = 0;
            // Navigator.of(context).pop(MaterialPageRoute(
            //   builder: (context) => NearMeScreen(),
            // ));
          },
          icon: Icon(Icons.arrow_back_ios),
          color: pikitBlack,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: pikitWhite,
        elevation: 0,
        iconTheme: IconThemeData(color: pikitBlack),
        title: Text(
          "ALERTS",
          style: TextStyle(color: pikitBlack),
        ),
      ),
      body: SafeArea(
          minimum: EdgeInsets.all(10),
          child: Column(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Mark as read",
                  style: TextStyle(color: pikitOrange, fontSize: 15),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Stack(children: [
                        ListTile(
                          style: ListTileStyle.list,
                          //  leading: Text("2 days ago"),
                          trailing: Icon(
                            Icons.notifications_outlined,
                            color: pikitGreen,
                          ),
                          title: Text("Order Delivered"),
                          subtitle:
                              Text("the order has been delivered to you enjoy"),
                        ),
                        Positioned(right: 2, top: 3, child: Text("3 days ago"))
                      ]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          )),
    );
  }
}
