import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/NearMeHotelList/promoslider/promoslider_bloc.dart';
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
        )
      ],
      child: MaterialApp(
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
