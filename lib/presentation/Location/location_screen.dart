import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/Location/googlemap_location.dart';
import 'package:pikit/presentation/Login/Login.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/location.jpg'),
                ),
              ),
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              color: pikitWhite,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Order from top & favourite restaurants",
                      style: TextStyle(
                          color: pikitBlack,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(14),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Ready to see top restaurant to order?",
                      style: TextStyle(
                        color: pikitBaseGreyIntensive,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return GoogleMapLocation();
                          },
                        ));
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(pikitGreenButtonText)),
                      child: const Text(
                        "SETUP YOUR LOCATION",
                      )),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Login(),
                            ));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(color: pikitGreenButtonText),
                          ))
                    ],
                  ),

                  //  Text(data)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
