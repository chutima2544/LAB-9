import 'package:flutter/material.dart';
import 'package:foniture_application/constants.dart';
import 'package:foniture_application/lab8.dart';
import 'package:foniture_application/lab9.dart';
import 'package:foniture_application/menu%20beam.dart';

import 'package:foniture_application/models/product.dart';
import 'package:foniture_application/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Store',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Super Store'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: [LAB9(), LAB8()],
        ),
        backgroundColor: Colors.black54,
        bottomNavigationBar: const TabBar(
          // ignore: prefer_const_literals_to_create_immutables
          tabs: [
            Tab(
              icon: Icon(Icons.shopping_cart), 
              text: "Furniture",
            ),
            Tab(

              icon: Icon(Icons.restaurant), 
              text: "Menu",
            )
          ],
        ),
      ),
    );
  }
}










/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.purple,
          body: TabBarView(
            children: [ProductsScreen(), LAB8()],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: "Forniture"),
              Tab(icon: Icon(Icons.add), text: "Menu")
            ],
          ),
        ));

    /*MaterialApp(
      title: 'Furniture App',
      theme: ThemeData(
        // We set Poppins as our default font
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        //accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProductsScreen(),
    );*/
  }
}
*/