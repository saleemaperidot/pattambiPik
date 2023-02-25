import 'package:flutter/material.dart';

import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/commonWidgets/custom_elevatedbutton.dart';

class ManageAccount extends StatelessWidget {
  ManageAccount({super.key});
  bool iconindicator = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: pikitWhite,
        leading: IconButton(
          icon: const Icon(pikitarrowBack),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: pikitBlue,
        ),
        iconTheme: const IconThemeData(color: pikitBlack),
        centerTitle: true,
        title: const Text(
          "MANAGE ADDRESS",
          style: TextStyle(color: pikitBlack),
        ),
        actions: const [Icon(Icons.home_outlined)],
      ),
      body: SafeArea(
        child: Stack(children: [
          ListView.separated(
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: SizedBox(
                  height: 100,
                  child: ListTile(
                    leading: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text("data"),
                        Text("adddress of the user with location details"),
                        Text("place")
                      ],
                    ),
                    trailing: iconindicator
                        ? const Icon(Icons.event_available_sharp)
                        : const Icon(Icons.delete_outline),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 5);
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
