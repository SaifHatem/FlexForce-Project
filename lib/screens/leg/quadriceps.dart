import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flex_force/widgets/leg/quadriceps_listView.dart';
import 'package:flutter/material.dart';

class QuadricepsLeg extends StatelessWidget {
  QuadricepsLeg({super.key});

  String quadricepsLegId = 'QuadricepsLeg';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الرجل الأمامية",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "تحرك القدم للأمام",
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
          QuadricepsListview(),
        ],
      ),
    );
  }
}
