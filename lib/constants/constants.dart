import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

//width height paddings
const Widget kheight = SizedBox(
  height: 20,
);
const Widget kheightL = SizedBox(
  height: 40,
);

const Widget kwidth = SizedBox(
  width: 10,
);
const Widget kwidthmedium = SizedBox(
  width: 200,
);
//const BaseWidth(context ctx)
//const BaseWidth = MediaQuery.of(context).size.width;
//colors
final Color? pikitBasebluepleasent = Colors.blue[50];
final Color? pikitBaseGreyIntensive = Colors.grey[900];
const Color pikitBaseGrey = Colors.grey;
final Color? pikitGrey = Colors.grey[100];
const Color pikitWhite = Colors.white;
const Color pikitGreen = Colors.green;
final Color? pikitGreen50 = Colors.green[50];
const Color pikitRed = Colors.red;
final Color? pikitBlackTheme = Colors.black;
const Color pikitBlack = Colors.black;
const Color pikitGreenButtonText = Color.fromARGB(255, 6, 146, 62);
const Color pikitBlue = Colors.blue;
const Color pikitOrange = Colors.orange;
//icons
const IconData pikitWallet = Icons.wallet_outlined;
const IconData pikitLock = Icons.lock_clock_outlined;
const IconData pikitStar = Icons.star;
const IconData pikitHomeOutlined = Icons.home_outlined;
const IconData pikitarrowBack = Icons.arrow_back_ios;
//const IconData pikitfoodAvailableveg = Icons.;
const IconData pikitfoodAvailable = Icons.stop_circle_outlined;
const IconData pikitMenuIcon = Icons.menu;
const IconData pikitChervonRightAppBarRight = Icons.chevron_right;
const IconData pikitNotificationIcon = Icons.notifications_none_outlined;
const IconData pikitLocationIcon = Icons.location_on_outlined;
const IconData pikitSearchIcon = Icons.search;
const IconData pikitShopingBagIcon = Icons.shopping_bag_outlined;
const IconData pikitAccountPersonIcon = Icons.person_outline;

Widget horizontal_line = Container(
  color: pikitBaseGrey,
  child: const SizedBox(
    height: 1,
    width: double.infinity,
  ),
);

const rs = "₹";
