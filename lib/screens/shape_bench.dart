import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/bench/bench_gridView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ShapeBench extends StatelessWidget {
  ShapeBench({super.key});

  String benchId = 'ShapeBech';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "البينش",
      ),
      body: BenchGridView(),
    );
  }
}
