import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/back/back_gridView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ShapeBack extends StatelessWidget {
  ShapeBack({super.key});

  String backId = 'ShapeBack';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الضهر",
      ),
      body: BackGridView(),
    );
  }
}
