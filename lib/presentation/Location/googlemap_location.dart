import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/commonWidgets/Custom_textField.dart';
import 'package:pikit/presentation/commonWidgets/custom_elevatedbutton.dart';
import 'package:pikit/presentation/commonWidgets/custom_text.dart';
import 'package:pikit/presentation/home.dart';

class GoogleMapLocation extends StatelessWidget {
  const GoogleMapLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // iconTheme: IconThemeData(color: Colors.green),
        // backgroundColor: pikitBasebluepleasent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            pikitarrowBack,
          ),
          color: pikitBlack,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                color: pikitBaseGrey,
              ),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    const customText(text: "YOUR LOCATION"),
                    const customTextField(initialtextValue: "Your location"),
                    const customText(text: "ADDRESS"),
                    const customTextField(initialtextValue: " "),
                    const customText(text: "TAG"),
                    const customTextField(initialtextValue: "EG:HOME,OFFICE"),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Home(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: pikitGreenButtonText,
                          minimumSize: const Size.fromHeight(50)),
                      child: Text(
                        "SAVE ADDRESS",
                      ),
                    )
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
