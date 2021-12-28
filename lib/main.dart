import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:servicehub/pages/HomePage/splashScreen.dart';
import 'package:servicehub/provider/globals.dart';
import 'package:servicehub/provider/themes.dart';
import 'package:servicehub/utils/serviceLocator.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = new MyHttpOverrides();
  await setupLocator();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<Globals>.value(value: Globals()),
    ChangeNotifierProvider<ThemeProvider>.value(
      value: ThemeProvider(isLightTheme: true),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service Hub',
      home: Splash(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cantarell',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: HexColor('32CD32')),
      ),
    );
  }
}
