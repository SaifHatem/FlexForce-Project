import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flex_force/widgets/leg/leg_gridView.dart';
import 'package:flutter/material.dart';

class ShapeLeg extends StatelessWidget {
  ShapeLeg({super.key});

  String legId = 'ShapeLeg';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الرجل",
      ),
      body: LegGridView(),
    );
  }
}
