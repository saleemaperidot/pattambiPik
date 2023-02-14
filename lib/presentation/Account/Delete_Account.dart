import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';

class DeleteAccount extends StatelessWidget {
  const DeleteAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: pikitBlack),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.5,
          // color: Colors.amberAccent,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              Icon(
                Icons.delete_outline,
                color: Colors.orange,
                size: 50,
              ),
              kheight,
              Text(
                "Delete account will loose data and user access",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              kheight,
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Proceed Now"),
                      style:
                          ElevatedButton.styleFrom(backgroundColor: pikitRed),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Go back",
                        style: TextStyle(color: pikitBlue),
                      ),
                      style:
                          ElevatedButton.styleFrom(backgroundColor: pikitGrey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
