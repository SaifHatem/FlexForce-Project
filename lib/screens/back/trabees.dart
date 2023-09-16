import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/back/trabees_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class TrabeesBack extends StatelessWidget {
  TrabeesBack({super.key});

  String trabeesBackId = 'TrabeesBack';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الترابيس",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "رفع الأكتاف لأعلي",
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
          TrabeesListview(),
        ],
      ),
    );
  }
}
