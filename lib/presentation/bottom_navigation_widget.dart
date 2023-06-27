import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/place_order/place_order_bloc.dart';
import 'package:pikit/constants/constants.dart';

ValueNotifier<int> navigationNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: navigationNotifier,
      builder: (context, int newValue, _) {
        return BottomNavigationBar(
          onTap: (index) {
            navigationNotifier.value = index;
          },
          currentIndex: newValue,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(pikitLocationIcon),
              label: "Near Me",
            ),
            BottomNavigationBarItem(
              icon: Badge(
                  badgeContent: Text(
                    "0",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  badgeStyle: BadgeStyle(badgeColor: pikitGreen),
                  child: Icon(pikitNotificationIcon)),
              label: "Alert",
            ),
            BottomNavigationBarItem(
              icon: Icon(pikitSearchIcon),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                builder: (context, state) {
                  return Badge(
                      badgeContent: Text(
                        state.quantity.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      badgeStyle: BadgeStyle(badgeColor: pikitGreen),
                      child: Icon(pikitShopingBagIcon));
                },
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(pikitAccountPersonIcon),
              label: "Account",
            ),
          ],
        );
      },
    );
  }
}
