import 'package:flex_force/classes/shape_class.dart';
import 'package:flex_force/screens/bench/lowBench.dart';
import 'package:flex_force/screens/bench/middleBench.dart';
import 'package:flex_force/screens/bench/upperBench.dart';
import 'package:flex_force/widgets/custom_shape.dart';
import 'package:flutter/material.dart';

class BenchGridView extends StatelessWidget {
  const BenchGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ShapeCategory> shapes = [
      ShapeCategory(
        shapeColor: const Color(0xff7397E3),
        shapeText: 'الجزء العلوي ',
        shapeImage: 'images/deep_chest.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, UpperBench().upperBenchId);
        },
      ),
      ShapeCategory(
        shapeColor: const Color(0xff52FE4A),
        shapeText: 'الجزء الأوسط ',
        shapeImage: 'images/deep_chest.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, MiddleBench().middleBenchId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.red,
        shapeText: 'الجزء السفلي',
        shapeImage: 'images/deep_chest.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, LowBench().lowBenchId);
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
