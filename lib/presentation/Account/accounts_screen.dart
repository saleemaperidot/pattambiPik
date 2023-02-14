import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/Account/Delete_Account.dart';
import 'package:pikit/presentation/Account/manageAccount.dart';
import 'package:pikit/presentation/Account/myOrder.dart';
import 'package:pikit/presentation/Account/wallet.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 80),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              color: pikitGrey,
              child: ListTile(
                title: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    "Name Of the Account Holder"),
                subtitle: Text("918393199"),
              ),
            ),
            Expanded(
                child: Column(
              children: [
                customExpansionTile(
                    text: "My Account",
                    color: pikitBlack,
                    childerens: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => manageAccount(),
                          ));
                        },
                        trailing: Icon(Icons.arrow_right_outlined),
                        leading: customRowAccount(
                          leadingIcon: Icons.home_outlined,
                          text: "Manage Address",
                          iconIndicator: true,
                        ),

                        //   // Text("Manage Address"),
                      ),

                      // //My orders
                      ListTile(
                        trailing: Icon(Icons.arrow_right_outlined),
                        leading: customRowAccount(
                          iconIndicator: true,
                          leadingIcon: Icons.shopping_cart_outlined,
                          text: "My Orders",
                        ),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyOrders(),
                          ));
                        },
                      ),

                      // //My wallets
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Wallet(),
                          ));
                        },
                        trailing: Icon(Icons.arrow_right_outlined),
                        leading: customRowAccount(
                          iconIndicator: true,
                          leadingIcon: Icons.wallet_rounded,
                          text: "My Wallets",
                        ),
                      ),
                    ]),
                customExpansionTile(
                    text: "Account Settings",
                    color: pikitBlack,
                    childerens: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DeleteAccount(),
                          ));
                        },
                        trailing: Icon(Icons.arrow_right_outlined),
                        leading: customRowAccount(
                          iconIndicator: true,
                          leadingIcon: Icons.info_outline,
                          text: "Delete Account",
                        ),
                      ),
                    ]),
                customExpansionTile(
                  text: "Help & FAQs",
                  color: pikitBlack,
                  childerens: [
                    ListTile(
                      trailing: Icon(Icons.arrow_right_outlined),
                      leading: customRowAccount(
                        iconIndicator: false,
                        leadingIcon: Icons.wallet_rounded,
                        text: "privacy",
                      ),
                    ),
                    //faq
                    ListTile(
                      trailing: Icon(Icons.arrow_right_outlined),
                      leading: customRowAccount(
                        iconIndicator: false,
                        leadingIcon: Icons.wallet_rounded,
                        text: "Employee varivation",
                      ),
                    ),
                  ],
                ),
                ListTile(
                  leading: Text(
                    "Log Out",
                    style: TextStyle(color: pikitRed),
                  ),
                  trailing: Icon(
                    Icons.logout_sharp,
                    color: pikitRed,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class customExpansionTile extends StatelessWidget {
  const customExpansionTile(
      {Key? key,
      required this.text,
      required this.color,
      required this.childerens})
      : super(key: key);
  final String text;
  final Color color;
  final List<Widget> childerens;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text(
          text,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ),
        initiallyExpanded: true,
        children: childerens
        // [
        // ListTile(
        //   trailing: Icon(Icons.arrow_right_outlined),
        //   leading:.
        //   customRowAccount(
        //     leadingIcon: Icons.home_outlined,
        //     text: "Manage Account",
        //  // ),

        // Text("Manage Address"),
        // ],
        );
  }
}

class customRowAccount extends StatelessWidget {
  const customRowAccount(
      {Key? key,
      required this.iconIndicator,
      required this.leadingIcon,
      required this.text})
      : super(key: key);
  final IconData leadingIcon;
  final String text;
  final bool iconIndicator;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconIndicator ? leadingIcon : null,
          color: pikitBaseGrey,
          //Icons.home_outlined,

          semanticLabel: "Manage Address",
        ),
        kwidth,
        Text(
          text,
          style: TextStyle(color: pikitBaseGrey),
        ),
        //kwidthmedium,
        // Icon(
        //   Icons.arrow_forward_ios,
        //   color: pikitBaseGrey,
        // )
      ],
    );
  }
}
