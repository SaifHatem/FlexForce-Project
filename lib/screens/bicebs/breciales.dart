import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/biceeps/breciales_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class BricialesdBicebs extends StatelessWidget {
  BricialesdBicebs({super.key});

  String bricialesdBicebsId = 'BricialesdBicebs';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "البريكياليس",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "كف الايد كما هو في الصورة",
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
          BricialesListview(),
        ],
      ),
    );
  }
}
