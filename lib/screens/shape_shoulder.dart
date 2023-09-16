import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flex_force/widgets/shoulder/shoulder_gridView.dart';
import 'package:flutter/material.dart';

class ShapeShoulder extends StatelessWidget {
  ShapeShoulder({super.key});

  String shoulderId = 'ShapeShoulder';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الكتف",
      ),
      body: ShoulderGridView(),
    );
  }
}
