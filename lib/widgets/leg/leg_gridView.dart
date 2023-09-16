import 'package:flex_force/classes/shape_class.dart';
import 'package:flex_force/screens/back/magns.dart';
import 'package:flex_force/screens/back/roteto.dart';
import 'package:flex_force/screens/leg/claves.dart';
import 'package:flex_force/screens/leg/hamestring.dart';
import 'package:flex_force/screens/leg/quadriceps.dart';

import 'package:flex_force/widgets/custom_shape.dart';
import 'package:flutter/material.dart';

class LegGridView extends StatelessWidget {
  const LegGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ShapeCategory> shapes = [
      ShapeCategory(
        shapeColor: Colors.red,
        shapeText: 'الرجل الأمامية',
        shapeImage: 'images/deep_qudriceps.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, QuadricepsLeg().quadricepsLegId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.blue,
        shapeText: 'الرجل الخلفية',
        shapeImage: 'images/deep_hamstring-removebg-preview.png',
        shapeOnTap: () {
          Navigator.pushNamed(context, HamestringLeg().hamestringLegId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.green,
        shapeText: 'السمانة',
        shapeImage: 'images/deep_claves-removebg-preview.png',
        shapeOnTap: () {
          Navigator.pushNamed(context, ClavesLeg().clavesLegId);
        },
      ),
    ];
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: shapes.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return CustomShapes(
            shape: shapes[index],
          );
        });
  }
}
