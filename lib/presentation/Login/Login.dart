import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/login/login_bloc.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/domain/data/user/login_model/login_model.dart';
import 'package:pikit/presentation/NearMe/nearMe_screen.dart';
import 'package:pikit/presentation/commonWidgets/Custom_textField.dart';
import 'package:pikit/presentation/commonWidgets/custom_elevatedbutton.dart';
import 'package:pikit/presentation/commonWidgets/custom_text.dart';
import 'package:pikit/presentation/home.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _phoneController = TextEditingController();
  final _formKeylogin = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<LoginBloc>(context)
            .add(LoginEvent.loginSuccess(loginModel: LoginModel()));
      },
    );
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: pikitBasebluepleasent,
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
                // trailing: Container(
                //     child: Image(
                //         image: NetworkImage(
                //             "https://media.istockphoto.com/id/165667622/vector/summer-drink-cartoon.jpg?s=612x612&w=0&k=20&c=Bm4OSiA8e_ZnT3C0aKpGsfFbV_-ZMxSzs5Ki8J-DGZ4="))),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customText(
                  text: "phone",
                ),
                kheight,
                Form(
                  key: _formKeylogin,
                  child: TextFormField(
                    controller: _phoneController,
                    validator: (value) {
                      (value == null || value.isEmpty)
                          ? "enter phone number"
                          : null;
                    },
                  ),
                ),
                kheight,
                BlocListener<LoginBloc, LoginState>(
                  listener: (context, state) {
                    log("state${state.successIndicator}");
                    if (state.successIndicator["success"] == true) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) {
                          return Home();
                        },
                      ));
                    } else if (state
                            .successIndicator["name_field_for_register_form"] ==
                        true) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("you are not registered")));
                    }
                    // TODO: implement listener
                  },
                  child: BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return customElevstedButton(
                        buttonName: "LOGIN",
                        onclik: () {
                          if (_formKeylogin.currentState!.validate()) {
                            print("valid");
                            final loginModel = LoginModel.create(
                                phone: _phoneController.text,
                                accessToken: "",
                                address: "",
                                email: "",
                                password: "",
                                provider: "");
                            print("LoginModel${loginModel.toJson()}");
                            BlocProvider.of<LoginBloc>(context).add(
                                LoginEvent.loginSuccess(
                                    loginModel: loginModel));
                          }
                        },
                      );
                    },
                  ),
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
