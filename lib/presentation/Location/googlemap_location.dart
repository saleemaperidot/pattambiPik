import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/user_registarion/bloc/registration_bloc.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/domain/data/user/user_register/user_register.dart';
import 'package:pikit/presentation/Login/Login.dart';
import 'package:pikit/presentation/commonWidgets/Custom_textField.dart';
import 'package:pikit/presentation/commonWidgets/custom_elevatedbutton.dart';
import 'package:pikit/presentation/commonWidgets/custom_text.dart';
import 'package:pikit/presentation/home.dart';

class GoogleMapLocation extends StatelessWidget {
  GoogleMapLocation({super.key});
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _addressController = TextEditingController();
  late UserRegister userregistration;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<RegistrationBloc>(context).add(
          RegistrationEvent.registeruser(userregisterdata: UserRegister()));
    });
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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: pikitBaseGrey,
                ),
                Expanded(
                    child: ListView(shrinkWrap: true, children: [
                  customText(text: "YOUR LOCATION"),
                  TextFormField(
                    decoration: InputDecoration(hintText: "address"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field should not be empty';
                      }
                      return null;
                    },
                    obscureText: false,
                  ),
                  customText(
                    text: "NAME",
                  ),
                  TextFormField(
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field should not be empty';
                      }
                      return null;
                    },
                    obscureText: false,
                    decoration: const InputDecoration(
                        // enabledBorder: Outlined(),
                        ),
                  ),
                  customText(text: "EMAIL"),
                  TextFormField(
                    controller: _emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field should not be empty';
                      }
                      return null;
                    },
                    obscureText: false,
                    decoration: const InputDecoration(
                        // enabledBorder: Outlined(),
                        ),
                  ),
                  customText(text: "PHONE"),
                  TextFormField(
                    controller: _phoneController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field should not be empty';
                      }
                      return null;
                    },
                    obscureText: false,
                    decoration: const InputDecoration(
                        // enabledBorder: Outlined(),
                        ),
                  ),
                  customText(text: "PASSWORD", obs: true),
                  TextFormField(
                    controller: _passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field should not be empty';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        // enabledBorder: Outlined(),
                        ),
                  ),
                  customText(text: "ADDRESS", obs: true),
                  TextFormField(
                    controller: _addressController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'this field should not be empty';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        // enabledBorder: Outlined(),
                        ),
                  ),
                  BlocListener<RegistrationBloc, RegistrationState>(
                    listener: (context, state) {
                      if (state.userRegister == true) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                      }
                      // TODO: implement listener
                    },
                    child: BlocBuilder<RegistrationBloc, RegistrationState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              userregistration = UserRegister.create(
                                name: _nameController.text,
                                email: _emailController.text,
                                phone: _phoneController.text,
                              );

                              BlocProvider.of<RegistrationBloc>(context).add(
                                  RegistrationEvent.registeruser(
                                      userregisterdata: userregistration));
                              //

                              // Navigator.of(context).push(MaterialPageRoute(
                              //   builder: (context) => Home(),
                              //  ));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: pikitGreenButtonText,
                              minimumSize: const Size.fromHeight(50)),
                          child: Text(
                            "SAVE ADDRESS",
                          ),
                        );
                      },
                    ),
                  )
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
