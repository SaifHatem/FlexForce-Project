import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flex_force/widgets/shoulder/rear_listView.dart';
import 'package:flutter/material.dart';

class RearShoulder extends StatelessWidget {
  RearShoulder({super.key});

  String rearShoulderId = 'RearShoulder';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الكتف الخلفي",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "حركة الذراع للخلف",
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
          RearShoulderListview(),
        ],
      ),
    );
  }
}
