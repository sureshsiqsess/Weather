import 'package:flutter/material.dart';
import 'package:weather/pages/registration.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  _MainApp createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  _MainApp();

  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Circular-Std',
          primarySwatch: Colors.blue,
          buttonTheme: ButtonThemeData(
            minWidth: 10,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(20, 13, 20, 13),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(20, 13, 20, 13),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ))),
          textTheme: TextTheme(
              button: TextStyle(fontSize: 14, fontFamily: 'Circular-Std')),
          iconTheme: IconThemeData(color: Colors.blue),
          primaryIconTheme: IconThemeData(color: Colors.blue),
          buttonBarTheme: ButtonBarThemeData(buttonPadding: EdgeInsets.all(5)),
        ),
        home: _buildPage());
  }

  Widget _buildPage() {
    return HomePage();
  }
}

class UiColors {}
