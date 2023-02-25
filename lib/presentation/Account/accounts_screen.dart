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
    final mediaHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AccountHolderContainer(mediaHeight: mediaHeight),
            Expanded(
                child: Column(
              children: [
                CustomExpansionTile(
                    text: "My Account",
                    color: pikitBlack,
                    childerens: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ManageAccount(),
                          ));
                        },
                        trailing: Icon(Icons.arrow_right_outlined),
                        leading: const CustomRowAccount(
                          leadingIcon: Icons.home_outlined,
                          text: "Manage Address",
                          iconIndicator: true,
                        ),

                        //   // Text("Manage Address"),
                      ),

                      // //My orders
                      ListTile(
                        trailing: const Icon(Icons.arrow_right_outlined),
                        leading: const CustomRowAccount(
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
                        trailing: const Icon(Icons.arrow_right_outlined),
                        leading: const CustomRowAccount(
                          iconIndicator: true,
                          leadingIcon: Icons.wallet_rounded,
                          text: "My Wallets",
                        ),
                      ),
                    ]),
                CustomExpansionTile(
                    text: "Account Settings",
                    color: pikitBlack,
                    childerens: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DeleteAccount(),
                          ));
                        },
                        trailing: const Icon(Icons.arrow_right_outlined),
                        leading: const CustomRowAccount(
                          iconIndicator: true,
                          leadingIcon: Icons.info_outline,
                          text: "Delete Account",
                        ),
                      ),
                    ]),
                const CustomExpansionTile(
                  text: "Help & FAQs",
                  color: pikitBlack,
                  childerens: [
                    ListTile(
                      trailing: Icon(Icons.arrow_right_outlined),
                      leading: CustomRowAccount(
                        iconIndicator: false,
                        leadingIcon: Icons.wallet_rounded,
                        text: "privacy",
                      ),
                    ),
                    //faq
                    ListTile(
                      trailing: Icon(Icons.arrow_right_outlined),
                      leading: CustomRowAccount(
                        iconIndicator: false,
                        leadingIcon: Icons.wallet_rounded,
                        text: "Employee varivation",
                      ),
                    ),
                  ],
                ),
                const ListTile(
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

class AccountHolderContainer extends StatelessWidget {
  const AccountHolderContainer({
    Key? key,
    required this.mediaHeight,
  }) : super(key: key);

  final double mediaHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80),
      width: double.infinity,
      height: mediaHeight * 0.3,
      color: pikitGrey,
      child: const ListTile(
        title: Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            "Name Of the Account Holder"),
        subtitle: Text("918393199"),
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile(
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
        children: childerens);
  }
}

class CustomRowAccount extends StatelessWidget {
  const CustomRowAccount(
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
          style: const TextStyle(color: pikitBaseGrey),
        ),
      ],
    );
  }
}
