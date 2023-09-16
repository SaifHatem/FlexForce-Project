import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/back/katania_listView.dart';
import 'package:flex_force/widgets/back/roteto_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class KataniaBack extends StatelessWidget {
  KataniaBack({super.key});

  String kataniaBackId = 'KataniaBack';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "القطنية",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "الميل بنص الضهر",
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
          KataniaListview(),
        ],
      ),
    );
  }
}
