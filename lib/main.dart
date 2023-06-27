import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/Items/items_bloc.dart';
import 'package:pikit/application/NearMeHotelList/promoslider/promoslider_bloc.dart';
import 'package:pikit/application/NearMeHotelList/restaraunt/allrestaraunts_bloc.dart';
import 'package:pikit/application/login/login_bloc.dart';
import 'package:pikit/application/my_order/my_order_bloc.dart';
import 'package:pikit/application/place_order/place_order_bloc.dart';
import 'package:pikit/application/proceedToCheckOut/proceed_to_checkout_bloc.dart';
import 'package:pikit/application/search/bloc/search_bloc.dart';
import 'package:pikit/application/user_registarion/bloc/registration_bloc.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/domain/di/injectable.dart';

import 'package:pikit/presentation/home.dart';
import 'package:pikit/presentation/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CongigureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<PromosliderBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<AllrestarauntsBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<ItemsBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<SearchBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<RegistrationBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<LoginBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<PlaceOrderBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<ProceedToCheckoutBloc>(),
        ),
        BlocProvider(
          create: (ctx) => getIt<MyOrderBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'pikit',
        theme: ThemeData(
          scaffoldBackgroundColor: pikitGrey,
          appBarTheme: const AppBarTheme(
              backgroundColor: pikitWhite,
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: pikitBlack,
                fontSize: 22,
              )),
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 40, color: pikitBlack),
            headline2: TextStyle(fontSize: 40, color: pikitBlack),
            headline3: TextStyle(fontSize: 40, color: pikitBlack),
            headline4: TextStyle(fontSize: 40, color: pikitBlack),
            headline5: TextStyle(fontSize: 40, color: pikitBlack),
            headline6: TextStyle(fontSize: 40, color: pikitBlack),
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
