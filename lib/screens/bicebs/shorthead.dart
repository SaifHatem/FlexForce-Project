import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/biceeps/shorthead_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ShortheadBicebs extends StatelessWidget {
  ShortheadBicebs({super.key});

  String shortheadBicebsId = 'ShortheadBicebs';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الشورت هيد",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  "ايدك أمام جسمك والحركة تبدأ من الامام",
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
          ShortheadListview(),
        ],
      ),
    );
  }
}
