import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/biceeps/bicebs_gridView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ShapeBicebs extends StatelessWidget {
  ShapeBicebs({super.key});

  String bicebsId = 'Bicebs';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الباي",
      ),
      body: BicebsGridView(),
    );
  }
}
