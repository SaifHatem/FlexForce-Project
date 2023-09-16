import 'package:flex_force/classes/shape_class.dart';
import 'package:flex_force/screens/bicebs/breciales.dart';
import 'package:flex_force/screens/bicebs/longhead.dart';
import 'package:flex_force/screens/bicebs/shorthead.dart';
import 'package:flex_force/widgets/custom_shape.dart';
import 'package:flutter/material.dart';

class BicebsGridView extends StatelessWidget {
  const BicebsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ShapeCategory> shapes = [
      ShapeCategory(
        shapeColor: Colors.blue,
        shapeText: 'اللونج هيد',
        shapeImage: 'images/deep_bicebs.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, LongheadBicebs().longheadBicebsId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.yellow,
        shapeText: 'الشورت هيد',
        shapeImage: 'images/deep_bicebs.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, ShortheadBicebs().shortheadBicebsId);
        },
      ),
      ShapeCategory(
        shapeColor: const Color(0xff52FE4A),
        shapeText: 'البريكياليس',
        shapeImage: 'images/deep_bicebs.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, BricialesdBicebs().bricialesdBicebsId);
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
