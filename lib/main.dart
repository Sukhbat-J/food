import 'package:flutter/material.dart';
import 'package:food/categories_screen.dart';


void main() {
  runApp(MaterialApp(home: MyApp(),
  ));
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Хоолны жор',
      theme: ThemeData(
        canvasColor: const Color.fromARGB(255, 250, 239, 181),
        fontFamily: 'Nunito',
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
                fontFamily: 'Nunito',
                fontWeight: FontWeight.normal,
              ),
            ),
      ),
      
      home: const CategoriesScreen(),
    );
  }
}


