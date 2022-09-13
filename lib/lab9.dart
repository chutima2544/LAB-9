import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:foniture_application/constants.dart';
import 'package:foniture_application/menu.dart';
import 'package:foniture_application/models/product.dart';
import 'package:foniture_application/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const LAB9());
}

class LAB9 extends StatelessWidget {
  const LAB9({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Furniture Stores"),
            backgroundColor: Colors.black,
          ),
          body: ProductsScreen(),
        ));
  }
}
