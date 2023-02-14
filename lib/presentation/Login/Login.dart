import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/commonWidgets/Custom_textField.dart';
import 'package:pikit/presentation/commonWidgets/custom_elevatedbutton.dart';
import 'package:pikit/presentation/commonWidgets/custom_text.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pikitBasebluepleasent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
          color: pikitBlack,
        ),
      ),
      body: SafeArea(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            color: pikitBasebluepleasent,
            child: Padding(
              padding: EdgeInsets.only(top: 150),
              child: ListTile(
                title: const Text("LOGIN"),
                subtitle: const Text("Enter your email and password"),
                trailing: Container(
                    child: Image(
                        image: NetworkImage(
                            "https://media.istockphoto.com/id/165667622/vector/summer-drink-cartoon.jpg?s=612x612&w=0&k=20&c=Bm4OSiA8e_ZnT3C0aKpGsfFbV_-ZMxSzs5Ki8J-DGZ4="))),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const customText(
                  text: "phone",
                ),
                kheight,
                customTextField(
                  initialtextValue: "+91",
                ),
                kheight,
                customElevstedButton(
                  buttonName: "LOGIN",
                ),
                kheight,
                Container(
                  padding: const EdgeInsets.only(left: 120),
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(color: pikitGreenButtonText),
                  ),
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
