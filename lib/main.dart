import 'package:bongalo/theme/theme.dart';
import 'package:bongalo/views/welcome/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bongalo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customPalette,
        appBarTheme: AppBarTheme(color: Theme.of(context).scaffoldBackgroundColor,elevation: 0,iconTheme: IconThemeData.fallback(),titleTextStyle: Theme.of(context).textTheme.headline6?.copyWith(color: primaryColor))
      ),
      home: const SplashScreen(),
    );
  }
}



