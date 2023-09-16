import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flex_force/widgets/tricebs/tricebs_gridView.dart';
import 'package:flutter/material.dart';

class ShapeTricebs extends StatelessWidget {
  ShapeTricebs({super.key});

  String tricebsId = 'ShapeTricebs';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "التراي",
      ),
      body: TricebsGridView(),
    );
  }
}
