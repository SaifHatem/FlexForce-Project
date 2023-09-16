import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flex_force/widgets/leg/hamestring_listView.dart';
import 'package:flutter/material.dart';

class HamestringLeg extends StatelessWidget {
  HamestringLeg({super.key});

  String hamestringLegId = 'HamestringLeg';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الرجل الخلفية",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "تحرك القدم للخلف",
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
          HamestringListview(),
        ],
      ),
    );
  }
}
