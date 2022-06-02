import 'package:flutter/material.dart';
import 'package:food/categories_screen.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Хоолны жор',
      theme: ThemeData(
        canvasColor: const Color.fromRGBO(255, 254, 224, 1),
        fontFamily: 'Quicksand',
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
            .copyWith(secondary: const Color.fromARGB(255, 110, 190, 255)),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodySmall: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyMedium: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              titleSmall: const TextStyle(
                fontSize: 20,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.normal,
              ),
            ),
      ),
      home: const CategoriesScreen(),
    );
  }
}
