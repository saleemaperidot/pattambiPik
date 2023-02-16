import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/commonWidgets/custom_elevatedbutton.dart';

class manageAccount extends StatelessWidget {
  manageAccount({super.key});
  bool iconindicator = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pikitWhite,
        leading: IconButton(
          icon: Icon(pikitarrowBack),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: pikitBlue,
        ),
        iconTheme: IconThemeData(color: pikitBlack),
        centerTitle: true,
        title: Text(
          "MANAGE ADDRESS",
          style: TextStyle(color: pikitBlack),
        ),
        actions: [Icon(Icons.home_outlined)],
      ),
      body: SafeArea(
        child: Stack(children: [
          ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                elevation: 10,
                child: Container(
                  height: 100,
                  child: ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("data"),
                        Text("adddress of the user with location details"),
                        Text("place")
                      ],
                    ),
                    trailing: iconindicator
                        ? Icon(Icons.event_available_sharp)
                        : Icon(Icons.delete_outline),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 5);
            },
            itemCount: 15,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              //bottom: 10,
              child: customElevstedButton(
                buttonName: "CHANGE ADDRESS",
                onclik: () {},
              ))
        ]),
      ),
    );
  }
}
