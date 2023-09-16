import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/bench/upper_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class UpperBench extends StatelessWidget {
  UpperBench({super.key});

  String upperBenchId = 'UpperBench';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الجزء العلوي",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                'الحركة دائما لأعلي وجزء الصدر مرتفع',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 2,
            ),
          ),
          UpperListview(),
        ],
      ),
    );
  }
}
