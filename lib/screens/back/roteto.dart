import 'package:flex_force/constants.dart';
import 'package:flex_force/widgets/back/roteto_listView.dart';
import 'package:flex_force/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class RotatoBack extends StatelessWidget {
  RotatoBack({super.key});

  String rotatoBackId = 'RotatoBack';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: CustomAppbar(
        appbarTitle: "الروتيتوركف",
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: Text(
                "جعل الكتف في مستوي الكوع",
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
          RotatoListview(),
        ],
      ),
    );
  }
}
