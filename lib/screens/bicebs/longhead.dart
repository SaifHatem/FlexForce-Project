import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/biceeps/longhead_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class LongheadBicebs extends StatelessWidget {
  LongheadBicebs({super.key});

  String longheadBicebsId = 'LongheadBicebs';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "اللونج هيد",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  "كوعك خلف جسمك والحركة تبدأ من الخلف للأمام",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 2,
            ),
          ),
          LongheadListview(),
        ],
      ),
    );
  }
}
