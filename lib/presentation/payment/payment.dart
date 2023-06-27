import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/place_order/place_order_bloc.dart';
import 'package:pikit/application/proceedToCheckOut/proceed_to_checkout_bloc.dart';
import 'package:pikit/domain/data/order_place/total.dart';
import 'package:pikit/domain/data/proceed_to_checkout_model/proceed_to_checkout_model.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../domain/data/order_place/location.dart';

class Payment extends StatelessWidget {
  Payment({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<PlaceOrderBloc>(context)
            .add(PlaceOrderEvent.getCartItems());
      },
    );
    return Scaffold(
        body: SafeArea(child: BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
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
        BlocProvider.of<ProceedToCheckoutBloc>(context)
            .add(ProceedToCheckoutEvent.checkOut(
          order: state.order,
          coupon: "",
          location: Location(address: "", house: "", lat: "", lng: "", tag: ""),
          orderComment: "",
          total: Total(
              productQuantity: state.quantity,
              totalPrice: totalPriceofaProduct.toInt()),
          methord: "COD",
          paymentTocken: "",
          deliveryType: 1,
          partialwallet: false,
          dis: 0,
          pendingPayment: false,
          tipAmount: "",
        ));
        return Container(
          child: Center(
            child: BlocBuilder<ProceedToCheckoutBloc, ProceedToCheckoutState>(
              builder: (context, state) {
                final orderPlacedResponse = state.proceedToCheckoutModel;
                //final fson= jsonDecode(orderPlacedResponse);

                final resultOfOrder =
                    ProceedToCheckoutModel.fromJson(orderPlacedResponse);
                print(resultOfOrder.success);
                //  resultOfOrder.success == true
                return resultOfOrder.success == true
                    ? Text("Order Placed and Payment is success full")
                    : const CircularProgressIndicator();
              },
            ),
          ),
        );
      },
    )));
  }
}
