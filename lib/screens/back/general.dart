import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/back/general_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class GeneralBack extends StatelessWidget {
  GeneralBack({super.key});

  String generalBackId = 'GeneralBack';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "كل عضلات الضهر",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "ليس لها شكل محدد",
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
          GeneralBackListview(),
        ],
      ),
    );
  }
}
