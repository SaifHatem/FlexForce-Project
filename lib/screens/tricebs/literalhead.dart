import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flex_force/widgets/tricebs/literalhead_listView.dart';
import 'package:flutter/material.dart';

class LitralheadTricebs extends StatelessWidget {
  LitralheadTricebs({super.key});

  String litralheadTricebsId = 'LitralheadTricebs';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الليترال هيد",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "الحركة من خلف الرأس",
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
          LitralheadListview(),
        ],
      ),
    );
  }
}
