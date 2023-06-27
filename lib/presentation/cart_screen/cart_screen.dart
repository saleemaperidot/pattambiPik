import 'dart:convert';
import 'dart:ui';

import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/place_order/place_order_bloc.dart';
import 'package:pikit/application/proceedToCheckOut/proceed_to_checkout_bloc.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/data/order_place/location.dart';
import 'package:pikit/domain/data/order_place/order.dart';
import 'package:pikit/domain/data/order_place/order_place.dart';
import 'package:pikit/domain/data/order_place/total.dart';
import 'package:pikit/domain/data/proceed_to_checkout_model/proceed_to_checkout_model.dart';

import 'package:pikit/domain/data/user/login_response_model/data.dart';
import 'package:pikit/presentation/Account/myOrder.dart';
import 'package:pikit/presentation/NearMe/hotel_list_card.dart';
import 'package:pikit/presentation/NearMe/nearMe_screen.dart';
import 'package:pikit/presentation/NearMe/near_hotel_dishes_screen.dart';
import 'package:pikit/presentation/bottom_navigation_widget.dart';
import 'package:pikit/presentation/commonWidgets/custom_elevatedbutton.dart';
import 'package:pikit/presentation/home.dart';
import 'package:pikit/presentation/payment/payment.dart';
import 'package:pikit/presentation/payment/select_payment_methord.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final snackBar = SnackBar(content: Text(' HELLO!! THIS IS A SNACKBAR'));
  // final checkOutsnakBar = SnackBar(
  //     backgroundColor: pikitWhite,
  //     content: Container(
  //       height: 140,
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           Text(
  //             "DELIVERY TO",
  //             style: TextStyle(
  //                 color: pikitBlack, fontWeight: FontWeight.bold, fontSize: 18),
  //           ),
  //           Text(
  //             "address to which item is to delivered",
  //             style: TextStyle(color: pikitBlack),
  //           ),
  //           ElevatedButton(
  //               style: ElevatedButton.styleFrom(
  //                   backgroundColor: pikitGreen,
  //                   fixedSize: Size.fromWidth(500)),
  //               onPressed: () {},
  //               child: Text(
  //                 "PROCEED TO CHEKOUT",
  //                 style: TextStyle(
  //                     color: pikitWhite,
  //                     fontWeight: FontWeight.bold,
  //                     fontSize: 20),
  //               ))
  //           // customElevstedButton(buttonName: "PROCEED TO CHECKOUT")
  //         ],
  //       ),
  //     ));
  @override
  Widget build(BuildContext context) {
    final _dimension = MediaQuery.of(context).size;

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // await ScaffoldMessenger.of(context).showSnackBar(checkOutsnakBar);

      BlocProvider.of<PlaceOrderBloc>(context)
          .add(PlaceOrderEvent.getCartItems());
    });
    // Scaffold.of(context).showBottomSheet(SnackBar);
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              // navigationNotifier.value = 0;
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: pikitBlue,
          ),
          automaticallyImplyLeading: false,
          elevation: 0,
          iconTheme: IconThemeData(color: pikitBlack),
          //  backgroundColor: pikitWhite,
          title: Text(
            "CART",
            style: TextStyle(color: pikitBlack),
          ),
          actions: [Icon(Icons.home_outlined)]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
            builder: (context, state) {
              print("cart ${state.order}");
              final hotelImage = state.restrauntImage;
              double totalPriceofaProduct = 0;
              for (int i = 0; i < state.order.length; i++) {
                print("quantity${state.order[i].quantity}");
                print("quantity${state.order[i].name}");
                final cart = state.order;
                final quantity = cart[i].quantity;
                final price = cart[i].price;

                int q = cast<int>(quantity);
                double r = double.parse(price!);
                double totalprice = q * r;
                totalPriceofaProduct = totalPriceofaProduct + totalprice;
              }
              return ListView(
                children: [
                  HotelListCard(
                    imageUrl: hotelImage,
                    hotelName: state.restruntName,
                    hotelDishesList: state.restraunrDiscription,
                    Rating: state.rating,
                    time: state.restrauntTime,
                    rate: "400",
                    isActive: 0,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    // height: _dimension.height * 0.3,
                    child: Card(
                      //  elevation: 4,
                      shadowColor: pikitBlack,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                              padding: EdgeInsets.all(8),
                              child: Text("ITEM IN CART")),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //  padding: EdgeInsets.all(20),
                              height: _dimension.height * 0.0005,
                              color: pikitBaseGrey,
                              width: _dimension.width * 0.85,
                            ),
                          ),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              final order = state.order[index];

                              print("====$order");
                              return CartItems(
                                state: state,
                                order: order,
                                id: state.order[index].id,
                                itemName: state.order[index].name,
                                isVeg: state.order[index].isVeg,
                                quantity: state.order[index].quantity,
                                rate: state.order[index].price,
                              );
                            },
                            itemCount: state.order.length,
                            separatorBuilder: (context, index) => SizedBox(
                              height: 15,
                            ),
                          ),
                          divider(),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Write your sujestion and reviews about the restraunts",
                              style: TextStyle(
                                  color: pikitBaseGrey,
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Card(
                      // elevation: 10,
                      shadowColor: pikitBlack,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                              padding: EdgeInsets.all(10),
                              child: Text("TIP TO YOUR DELIVERY PARTNER")),
                          Container(
                            padding: EdgeInsets.all(10),
                            height: 0.5,
                            color: pikitBaseGrey,
                            width: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                                "Thank your delivery partner to help you stay indoor.Support them through these tough times with a tip"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                AmountButton(
                                  amount: "10",
                                ),
                                AmountButton(
                                  amount: "20",
                                ),
                                AmountButton(
                                  amount: "30",
                                ),
                                AmountButton(
                                  amount: "40",
                                ),
                                AmountButton(
                                  amount: "other",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      child: ListTile(
                        leading: Icon(Icons.bookmark_added_outlined),
                        title: Text("COUPON"),
                        trailing: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: pikitGreen),
                            onPressed: () {},
                            child: Text(
                              "APPLY",
                            )),
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                        width: MediaQuery.of(context).size.height * 0.7,
                        child: Column(
                          children: [
                            Text("BILL DETAILS"),
                            BillingDetailsCardListItem(
                              leadingText: "Item Total",
                              trailingText: totalPriceofaProduct.toString(),
                              weight: false,
                            ),
                            divider(),
                            BillingDetailsCardListItem(
                                weight: false,
                                leadingText: "Delivery Charge",
                                trailingText: "12"),
                            divider(),
                            BillingDetailsCardListItem(
                                weight: false,
                                leadingText: "GST",
                                trailingText: "12"),
                            divider(),
                            BillingDetailsCardListItem(
                                weight: true,
                                leadingText: "To Pay",
                                trailingText:
                                    (24.0 + totalPriceofaProduct).toString()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // BlocListener<ProceedToCheckoutBloc, ProceedToCheckoutState>(
                  //   listener: (context, state) {
                  //     print("proceeeeeeed${state.proceedToCheckoutModel}");

                  //     final orderPlacedResponse = state.proceedToCheckoutModel;
                  //     //final fson= jsonDecode(orderPlacedResponse);

                  //     final resultOfOrder =
                  //         ProceedToCheckoutModel.fromJson(orderPlacedResponse);
                  //     print(resultOfOrder.success);
                  //     resultOfOrder.success == true
                  //         ? Navigator.of(context).push(MaterialPageRoute(
                  //             builder: (context) => PaymentMethord(),
                  //           ))
                  //         : showDialog(
                  //             context: context,
                  //             builder: (context) {
                  //               return SnackBar(
                  //                   content: Text("Order cant Placed"));
                  //             },
                  //           );
                  //     // TODO: implement listener
                  //   },
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PaymentMethord(),
                        ));
                        //   print(state.order[0].toJson());
                        //   print(state.order[1].toJson());
                        //   OrderPlace(
                        //     coupon: null,
                        //     deliveryType: 1,
                        //     dis: 0,
                        //     location: Location(),
                        //     method: "COD",
                        //     order: cart,
                        //     orderComment: null,
                        //     partialWallet: false,
                        //     paymentToken: " ",
                        //     tipAmount: null,
                        //     pendingPayment: false,
                        //     token:
                        //         "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3VhdC1jdXN0LWFwcC1iYWNrLnBpa2l0LmluL2FwaS9yZWdpc3RlciIsImlhdCI6MTY4NjY0NTQ4NSwibmJmIjoxNjg2NjQ1NDg1LCJqdGkiOiI5cVFYdHpiSGlwSlhIRmhrIiwic3ViIjoxNTgsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.QQVAOvVOVFNXTSBb5benPPlXUY9BqY85TplvqAsrU8c",
                        //     total: Total(
                        //         productQuantity: state.quantity,
                        //         totalPrice:
                        //             (24.0 + totalPriceofaProduct).toInt()),
                        //     //user: Data()
                        //   );
                        //   BlocProvider.of<ProceedToCheckoutBloc>(context)
                        //       .add(ProceedToCheckoutEvent.checkOut(
                        //     order: state.order,
                        //     coupon: "",
                        //     location: Location(
                        //         address: "",
                        //         house: "",
                        //         lat: "",
                        //         lng: "",
                        //         tag: ""),
                        //     orderComment: "",
                        //     total: Total(
                        //         productQuantity: state.quantity,
                        //         totalPrice: totalPriceofaProduct.toInt()),
                        //     methord: "COD",
                        //     paymentTocken: "",
                        //     deliveryType: 1,
                        //     partialwallet: false,
                        //     dis: 0,
                        //     pendingPayment: false,
                        //     tipAmount: "",
                        //   ));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      child: Text(
                        "PREOCEED TO CHECKOUT",
                      )),
                ],
              );
            },
          ),
        ),
      ),

// Here, we use the scaffold widget to show a snack bar.
    );
  }
}

class CartItems extends StatelessWidget {
  const CartItems(
      {super.key,
      required this.state,
      required this.order,
      required this.id,
      required this.isVeg,
      required this.itemName,
      required this.quantity,
      required this.rate});
  final id;
  final state;
  final order;
  final isVeg;
  final itemName;
  final quantity;
  final rate;

  @override
  Widget build(BuildContext context) {
    int q = cast<int>(quantity);
    double r = double.parse(rate);
    final price = q * r;
    int index = 0;
    // Order or=order;

    return ListTile(
      leading: Container(
        width: 114, //_dimension.width * 20,
        child: Row(children: [
          Icon(
            pikitfoodAvailable,
            color: isVeg == 0 ? pikitRed : pikitGreen,
          ),
          Container(
            width: 80,
            child: Text(
              itemName,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ]),
      ),
      title: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,

              //  final cart = state.order;
              //  final int index = cart.indexOf(order);

              //  cart[index].quantity = cart[index].quantity! + 1;

              child: OutlinedButton(
                onPressed: () {
                  //    final   cart = BlocProvider.read<PlaceOrderBloc>();

                  print("state in cart${order.name}");
                  final id = order.id;
                  final name = order.name;
                  print("smgddd$state");
                  List<Order> cart = state.order;
                  index = cart.indexOf(order);
                  cart[index].quantity = cart[index].quantity! + 1;

                  // state.quantity = state.quantity + 1;
                  // BlocProvider.of<PlaceOrderBloc>(context)
                  //     .add(PlaceOrderEvent.initialized());
                  print("cart$cart");
                  BlocProvider.of<PlaceOrderBloc>(context).add(
                      PlaceOrderEvent.orderItem(
                          order: cart,
                          restrauntImage: state.restrauntImage,
                          restrauntname: state.restruntName,
                          restrauntRating: state.rating,
                          time: state.restrauntTime,
                          restrauntDescription: state.restraunrDiscription));
                  final q = state.order[index].quantity;
                  print("q$q");
                },
                child: Text("+"),
              ),
            ),
            Container(
                width: 40,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(q.toString()),
                )),
            Container(
              width: 40,
              child: OutlinedButton(
                onPressed: () {},
                child: Text("-"),
              ),
            ),
          ],
        ),
      ),
      trailing: Text(price.toString()),
    );
  }
}

class divider extends StatelessWidget {
  const divider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 0.5,
      color: pikitBaseGrey,
      width: double.infinity,
    );
  }
}

class BillingDetailsCardListItem extends StatelessWidget {
  const BillingDetailsCardListItem(
      {Key? key,
      required this.leadingText,
      required this.trailingText,
      required this.weight})
      : super(key: key);

  final String leadingText;
  final String trailingText;
  final bool weight;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<PlaceOrderBloc>(context)
            .add(PlaceOrderEvent.getCartItems());
      },
    );

    return ListTile(
      leading: Text(
        leadingText,
        style: TextStyle(
          fontWeight: weight ? FontWeight.bold : FontWeight.normal,
        ),
      ),
      trailing: Text(trailingText),
    );
  }
}

class AmountButton extends StatelessWidget {
  const AmountButton({Key? key, required this.amount}) : super(key: key);
  final String amount;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: () {}, child: Text(amount));
  }
}

//  final snackBar = SnackBar(
//             content: Text('Hey! This is a SnackBar message.'),
//             duration: Duration(seconds: 5),
//             action: SnackBarAction(
//               label: 'Undo',
//               onPressed: () {
//                 // Some code to undo the change.
//               },
//             ),
//           );
//           Scaffold.of(context).showSnackBar(snackBar);
