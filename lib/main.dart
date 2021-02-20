import 'package:clubhouse/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
  //     .copyWith(statusBarIconBrightness: Brightness.light));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clubhouse',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.light,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            backgroundColor: Color.fromRGBO(241, 239, 228, 1),
            scaffoldBackgroundColor: Color(0xfff1efe4),
            accentColor: Color.fromRGBO(230, 227, 213, 1),
            appBarTheme: AppBarTheme(
              elevation: 0,
              color: Color.fromRGBO(241, 239, 228, 1),
              brightness: Brightness.light,
            )),
        home: HomeScreen());
  }
}
