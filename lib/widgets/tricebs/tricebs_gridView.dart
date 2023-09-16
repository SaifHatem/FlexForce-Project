import 'package:flex_force/classes/shape_class.dart';
import 'package:flex_force/screens/tricebs/literalhead.dart';
import 'package:flex_force/screens/tricebs/longheadtry.dart';
import 'package:flex_force/screens/tricebs/midialhead.dart';
import 'package:flex_force/widgets/custom_shape.dart';
import 'package:flutter/material.dart';

class TricebsGridView extends StatelessWidget {
  const TricebsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ShapeCategory> shapes = [
      ShapeCategory(
        shapeColor: const Color.fromARGB(255, 255, 0, 217),
        shapeText: 'اللونج هيد',
        shapeImage: 'images/deep_tricebs.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, LongheadTricebs().longheadTricebsId);
        },
      ),
      ShapeCategory(
        //shapeColor: const Color(0xffCE6200),
        shapeColor: Colors.orange,
        shapeText: 'الليترال هيد',
        shapeImage: 'images/deep_tricebs.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, LitralheadTricebs().litralheadTricebsId);
        },
      ),
      ShapeCategory(
        shapeColor: const Color(0xff5BFDEE),
        shapeText: 'الميديال هيد',
        shapeImage: 'images/deep_tricebs.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, MidialheadTricebs().midialheadTricebsId);
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
