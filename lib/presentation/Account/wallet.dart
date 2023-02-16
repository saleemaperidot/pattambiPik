import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              pikitarrowBack,
              color: pikitBlue,
            )),
        iconTheme: IconThemeData(color: pikitBlack),
        backgroundColor: pikitWhite,
        elevation: 0,
        title: Text(
          "WALLET",
          style: TextStyle(color: pikitBlack),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          kheightL,
          Container(
            width: MediaQuery.of(context).size.width * .8,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(border: Border.all(color: pikitBaseGrey)),
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                "Wallet:Rs 100",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
          kheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Widrow",
                  style: TextStyle(color: pikitOrange),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: pikitOrange),
                  shadowColor: pikitOrange,
                  elevation: 0,
                  textStyle: TextStyle(
                    color: pikitOrange,
                  ),

                  backgroundColor: pikitWhite,
                  fixedSize: Size.fromWidth(100),
                  //disabledBackgroundColor: true,
                  //  minimumSize: const Size.fromHeight(5)
                ),
              ),
              Text("300 Rs"),
              Text("2 years ago")
            ],
          ),
          kheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Deposit",
                  style: TextStyle(color: pikitGreen),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: pikitGreen),
                  shadowColor: pikitGreen,
                  elevation: 0,
                  textStyle: TextStyle(
                    color: pikitGreen,
                  ),

                  backgroundColor: pikitWhite,
                  fixedSize: Size.fromWidth(100),
                  //disabledBackgroundColor: true,
                  //  minimumSize: const Size.fromHeight(5)
                ),
              ),
              Text("300 Rs"),
              Text("2 years ago")
            ],
          ),
        ],
      )),
    );
  }
}
