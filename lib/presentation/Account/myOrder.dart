import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/my_order/my_order_bloc.dart';
import 'package:pikit/application/proceedToCheckOut/proceed_to_checkout_bloc.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/domain/data/order_list_model/order_request/order_request.dart';
import 'package:pikit/domain/data/proceed_to_checkout_model/proceed_to_checkout_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyOrders extends StatelessWidget {
  MyOrders({super.key});
  late String token;
  late int userId;
  @override
  Widget build(BuildContext context) {
    // final reqest = prefer().then((value) => value);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MyOrderBloc>(context).add(MyOrderEvent.getMyOrderList());
    });
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              pikitarrowBack,
              color: pikitBlue,
            )),
        iconTheme: const IconThemeData(
          color: pikitBlack,
        ),
        // backgroundColor: pikitWhite,
        elevation: 0,
        title: const Text(
          "MY ORDERS",
          style: TextStyle(color: pikitBlack),
        ),
      ),
      body: SafeArea(
        child: BlocBuilder<MyOrderBloc, MyOrderState>(
          builder: (context, state) {
            print("state in my orders$state");
            final orderBill = state.orderList;
            print(orderBill.length);
            return ListView.separated(
              itemCount: state.orderList.length,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 5,
                );
              },
              itemBuilder: (context, index) {
                final ordersList = orderBill[index];
                print(ordersList.createdAt);
                print(ordersList.restaurant);
                print(ordersList.orderComment);
                print(ordersList.orderitems);
                print(ordersList.uniqueOrderId);
                final restaurantname = ordersList.restaurant!.name;
                final item = ordersList.orderitems![0].name;
                final id = ordersList.uniqueOrderId;
                final date = ordersList.createdAt;
                print(ordersList.total);

                return Card(
                  elevation: 10,
                  shadowColor: pikitBlack,
                  color: pikitWhite,
                  // margin: const EdgeInsets.all(10),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: _width * 0.8,
                    height: _height * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Ordered",
                            style: TextStyle(color: pikitBlack),
                          ),
                        ),
                        ListTile(
                          dense: true,
                          //contentPadding: EdgeInsets.symmetric(),
                          visualDensity: VisualDensity(vertical: -3),
                          // minVerticalPadding: 1,
                          leading: Text(id.toString()),
                          trailing: Text(date.toString()),
                        ),
                        ListTile(leading: Text(restaurantname.toString())),
                        horizontal_line,
                        ListView.separated(
                          itemCount: ordersList.orderitems!.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: OutlinedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "${index + 1}",
                                    style: TextStyle(color: pikitBlack),
                                  )),
                              title: Text(ordersList.orderitems![index].name
                                  .toString()),
                              trailing: Text(ordersList.orderitems![index].price
                                      .toString() +
                                  " " +
                                  "(" +
                                  ordersList.orderitems![index].quantity
                                      .toString() +
                                  ")"),
                            );
                          },
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 10,
                            );
                          },
                        ),
                        // ListTile(
                        //   style: ListTileStyle.list,
                        //   leading: Text("full"),
                        //   trailing: Text("200 rs"),
                        // ),
                        horizontal_line,
                        BottomRows(
                          first: "Restraunt charges",
                          Second: "Rs 0",
                        ),
                        BottomRows(first: "Delivery Charges", Second: "Rs 12"),
                        BottomRows(
                            first: "TOTAL",
                            Second: "Rs ${ordersList.total.toString()}"),

                        BottomRows(first: "PAYMENT MODE", Second: "COD")
                      ],
                      //  mainAxisSize: MainAxisSize.min,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class BottomRows extends StatelessWidget {
  const BottomRows({
    Key? key,
    required this.first,
    required this.Second,
  }) : super(key: key);
  final String first;
  final String Second;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(first), Text(Second)],
      ),
    );
  }
}
