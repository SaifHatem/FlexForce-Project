import 'package:flex_force/classes/shape_class.dart';
import 'package:flex_force/screens/shoulder/front.dart';
import 'package:flex_force/screens/shoulder/rear.dart';
import 'package:flex_force/screens/shoulder/side.dart';
import 'package:flex_force/screens/tricebs/midialhead.dart';
import 'package:flex_force/widgets/custom_shape.dart';
import 'package:flutter/material.dart';

class ShoulderGridView extends StatelessWidget {
  const ShoulderGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ShapeCategory> shapes = [
      ShapeCategory(
        shapeColor: Colors.red,
        shapeText: 'الكتف الأمامي',
        shapeImage: 'images/deep_shoulder.png',
        shapeOnTap: () {
          Navigator.pushNamed(context, FrontShoulder().frontShoulderId);
        },
      ),
      ShapeCategory(
        //shapeColor: const Color(0xffCE6200),
        shapeColor: Colors.green,
        shapeText: 'الكتف الجانبي',
        shapeImage: 'images/deep_shoulder.png',
        shapeOnTap: () {
          Navigator.pushNamed(context, SideShoulder().sideShoulderId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.blue,
        shapeText: 'الكتف الخلفي',
        shapeImage: 'images/deep_shoulder.png',
        shapeOnTap: () {
          Navigator.pushNamed(context, RearShoulder().rearShoulderId);
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
