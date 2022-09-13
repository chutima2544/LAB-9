import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foniture_application/constants.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
     
    );
  }
}
