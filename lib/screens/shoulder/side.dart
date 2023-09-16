import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flex_force/widgets/shoulder/side_listView.dart';
import 'package:flutter/material.dart';

class SideShoulder extends StatelessWidget {
  SideShoulder({super.key});

  String sideShoulderId = 'SideShoulder';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الكتف الجانبي",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "حركة الذراع للجانب",
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
          SideShoulderListview(),
        ],
      ),
    );
  }
}
