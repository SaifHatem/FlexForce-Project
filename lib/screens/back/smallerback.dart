import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/back/roteto_listView.dart';
import 'package:flex_force/widgets/back/smallerback_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class SmallerBack extends StatelessWidget {
  SmallerBack({super.key});

  String smallerBackId = 'SmallerBack';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "العضلة معينة الشكل",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "تمارين السحب الأرضي",
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
          SmallerBackListview(),
        ],
      ),
    );
  }
}
