import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:foniture_application/TabMenu/navigation.dart';
import 'package:foniture_application/constants.dart';
import 'package:foniture_application/menu%20beam.dart';

import 'package:foniture_application/models/product.dart';
import 'package:foniture_application/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const LAB8());
}

class LAB8 extends StatelessWidget {
  const LAB8({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          endDrawer: NavigationDrawerWidget(),
          appBar: AppBar(
            title: Text("Food Menu"),
            backgroundColor: Colors.black,
          ),
          floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.shopping_bag_outlined),
          backgroundColor: Colors.orange,
        ),
          body: FoodMenu(),
        ));
  }
}
