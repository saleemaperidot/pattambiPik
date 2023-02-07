import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/NearMe/hotel_list_card.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pikitGrey,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: pikitWhite,
        actions: [
          IconButton(
              padding: EdgeInsets.only(left: 20),
              onPressed: () {},
              icon: Icon(
                pikitChervonRightAppBarRight,
                color: pikitGreen,
              ))
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Container(
            width: 60,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(""),
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                color: pikitGreen,
                width: 150,
                height: 150,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: CupertinoSearchTextField(
                backgroundColor: pikitWhite,
              ),
            ),
            Container(
              color: pikitWhite,
              child: SizedBox(
                child: ListView.separated(
                  padding: EdgeInsets.all(15),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 30,
                  ),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: HotelListCard(
                        hotelName: "hotelName",
                        hotelDishesList: [],
                        Rating: 5,
                        time: 30,
                        rate: 200.50,
                      ),
                    );
                  },
                  itemCount: 100,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
