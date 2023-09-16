import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/back/magns_listView.dart';
import 'package:flex_force/widgets/back/roteto_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class MagnsBack extends StatelessWidget {
  MagnsBack({super.key});

  String magnsBackId = 'MagnsBack';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "المجنص",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "تنزيل الأيد من أعلي لأسفل",
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
          MagnsListview(),
        ],
      ),
    );
  }
}
