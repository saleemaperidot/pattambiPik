import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/presentation/Account/accounts_screen.dart';
import 'package:pikit/presentation/Alert/alerts_screen.dart';
import 'package:pikit/presentation/Explore/explore_screen.dart';
import 'package:pikit/presentation/NearMe/nearMe_screen.dart';
import 'package:pikit/presentation/NearMe/near_hotel_dishes_screen.dart';
import 'package:pikit/presentation/bottom_navigation_widget.dart';
import 'package:pikit/presentation/cart_screen/cart_screen.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final pages = [
    NearHotelDishesScreen(),
    AlertsScreen(),
    ExploreScreen(),
    CartScreen(),
    AccountScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: ValueListenableBuilder(
        valueListenable: navigationNotifier,
        builder: (context, value, _) {
          return SafeArea(
            child: pages[value],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
