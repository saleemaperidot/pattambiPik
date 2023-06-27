import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/place_order/place_order_bloc.dart';
import 'package:pikit/application/proceedToCheckOut/proceed_to_checkout_bloc.dart';
import 'package:pikit/domain/data/order_place/location.dart';
import 'package:pikit/domain/data/order_place/order_place.dart';
import 'package:pikit/domain/data/order_place/total.dart';
import 'package:pikit/domain/data/proceed_to_checkout_model/proceed_to_checkout_model.dart';
import 'package:pikit/presentation/Account/myOrder.dart';
import 'package:pikit/presentation/payment/payment.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentMethord extends StatelessWidget {
  const PaymentMethord({super.key});

  @override
  Widget build(BuildContext context) {
    handlePaymentErrorResponse(PaymentFailureResponse response) {
      showAlertDialog(context, "Payment Failed",
          "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}");
    }

    void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
      /*
    * Payment Success Response contains three values:
    * 1. Order ID
    * 2. Payment ID
    * 3. Signature
    
    * */
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Payment(),
      ));
      // showAlertDialog(
      //     context, "Payment Successful", "Payment ID: ${response.paymentId}");
      // if (response.paymentId != null) {
      //   Center(
      //     child: cir,
      //   );
      // }
    }

    void handleExternalWalletSelected(ExternalWalletResponse response) {
      showAlertDialog(
          context, "External Wallet Selected", "${response.walletName}");
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PlaceOrderBloc>(context)
          .add(PlaceOrderEvent.getCartItems());
    });
    return Scaffold(body: BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
      builder: (context, state) {
        print(state);
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
        return SafeArea(
            child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                  child: ListTile(
                      title: Text("Select ypur prefered payment method"))),
              Card(
                child:
                    BlocListener<ProceedToCheckoutBloc, ProceedToCheckoutState>(
                  listener: (context, state) {
                    print("proceeeeeeed${state.proceedToCheckoutModel}");

                    final orderPlacedResponse = state.proceedToCheckoutModel;
                    //final fson= jsonDecode(orderPlacedResponse);

                    final resultOfOrder =
                        ProceedToCheckoutModel.fromJson(orderPlacedResponse);
                    print(resultOfOrder.success);
                    resultOfOrder.success == true
                        ? Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MyOrders(),
                          ))
                        : showDialog(
                            context: context,
                            builder: (context) {
                              return SnackBar(
                                  content: Text("Order cant Placed"));
                            },
                          );
                    // TODO: implement listener
                  },
                  child: ListTile(
                    onTap: () {
                      // print(state.order[0].toJson());
                      // print(state.order[1].toJson());
                      OrderPlace(
                        coupon: null,
                        deliveryType: 1,
                        dis: 0,
                        location: Location(),
                        method: "COD",
                        order: state.order,
                        orderComment: null,
                        partialWallet: false,
                        paymentToken: " ",
                        tipAmount: null,
                        pendingPayment: false,
                        token:
                            "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3VhdC1jdXN0LWFwcC1iYWNrLnBpa2l0LmluL2FwaS9yZWdpc3RlciIsImlhdCI6MTY4NjY0NTQ4NSwibmJmIjoxNjg2NjQ1NDg1LCJqdGkiOiI5cVFYdHpiSGlwSlhIRmhrIiwic3ViIjoxNTgsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.QQVAOvVOVFNXTSBb5benPPlXUY9BqY85TplvqAsrU8c",
                        total: Total(
                            productQuantity: state.quantity,
                            totalPrice: (24.0 + totalPriceofaProduct).toInt()),
                        //user: Data()
                      );
                      BlocProvider.of<ProceedToCheckoutBloc>(context)
                          .add(ProceedToCheckoutEvent.checkOut(
                        order: state.order,
                        coupon: "",
                        location: Location(
                            address: "", house: "", lat: "", lng: "", tag: ""),
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
                    },
                    title: Text("Cash On Delivery"),
                    subtitle: Text("Pay the money when pikit meets you"),
                    trailing: Image(
                        image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/1554/1554406.png")),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  onTap: () {
                    Razorpay razorpay = Razorpay();
                    var options = {
                      'key': 'rzp_test_LBF6f1B8s8ZdaO',
                      'amount': totalPriceofaProduct.toInt() * 100,
                      // int.parse((_textEditingController.text * 100)).toString(),
                      'name': 'Pikit.',
                      'description': state.restruntName,
                      'retry': {'enabled': true, 'max_count': 1},
                      'send_sms_hash': true,
                      'prefill': {
                        'contact': '8888888888',
                        'email': 'test@razorpay.com'
                      },
                      'external': {
                        'wallets': ['paytm']
                      }
                    };
                    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR,
                        handlePaymentErrorResponse);
                    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS,
                        handlePaymentSuccessResponse);
                    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET,
                        handleExternalWalletSelected);
                    razorpay.open(options);

                    // Navigator.of(context).push(MaterialPageRoute(
                    //   builder: (context) => Payment(),
                    // ));
                  },
                  title: Text("Razor Pay"),
                  subtitle: Text("Pay with card,wallets or UPI"),
                  trailing: Image(
                      image: NetworkImage(
                          "https://w7.pngwing.com/pngs/88/578/png-transparent-razorpay-logo-thumbnail-tech-companies-thumbnail.png")),
                ),
              ),
            ],
          ),
        ));
      },
    ));
  }
}

void showAlertDialog(BuildContext context, String title, String message) {
  // set up the buttons
  Widget continueButton = ElevatedButton(
    child: const Text("Continue"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [
      continueButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
