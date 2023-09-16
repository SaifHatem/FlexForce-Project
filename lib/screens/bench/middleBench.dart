import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/bench/middle_listView.dart';
import 'package:flex_force/widgets/bench/upper_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class MiddleBench extends StatelessWidget {
  MiddleBench({super.key});

  String middleBenchId = 'MiddleBench';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الجزء الأوسط",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                'الحركة دائما لأعلي وجزء الصدر مستوي',
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
          MiddleListview(),
        ],
      ),
    );
  }
}
