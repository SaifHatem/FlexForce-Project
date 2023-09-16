import 'package:flex_force/classes/shape_class.dart';
import 'package:flex_force/screens/shabe_bicebs.dart';
import 'package:flex_force/screens/shape_back.dart';
import 'package:flex_force/screens/shape_bench.dart';
import 'package:flex_force/screens/shape_leg.dart';
import 'package:flex_force/screens/shape_shoulder.dart';
import 'package:flex_force/screens/shape_tricebs.dart';
import 'package:flex_force/widgets/custom_shape.dart';
import 'package:flutter/material.dart';

class ShapeGridView extends StatelessWidget {
  const ShapeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ShapeCategory> shapes = [
      ShapeCategory(
        shapeColor: Colors.white,
        shapeText: 'البينش',
        shapeImage: 'images/bench.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, ShapeBench().benchId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.white,
        shapeText: 'الضهر',
        shapeImage: 'images/lastback.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, ShapeBack().backId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.white,
        shapeText: 'الرجل',
        shapeImage: 'images/leg.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, ShapeLeg().legId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.white,
        shapeText: 'الباي',
        shapeImage: 'images/bi.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, ShapeBicebs().bicebsId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.white,
        shapeText: 'التراي',
        shapeImage: 'images/tricebs.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, ShapeTricebs().tricebsId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.white,
        shapeText: ' الكتف',
        shapeImage: 'images/near_ktf.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, ShapeShoulder().shoulderId);
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
