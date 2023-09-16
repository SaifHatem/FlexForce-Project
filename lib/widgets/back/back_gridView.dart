import 'package:flex_force/classes/shape_class.dart';
import 'package:flex_force/screens/back/general.dart';
import 'package:flex_force/screens/back/katania.dart';
import 'package:flex_force/screens/back/magns.dart';
import 'package:flex_force/screens/back/roteto.dart';
import 'package:flex_force/screens/back/smallerback.dart';
import 'package:flex_force/screens/back/trabees.dart';
import 'package:flex_force/widgets/custom_shape.dart';
import 'package:flutter/material.dart';

class BackGridView extends StatelessWidget {
  const BackGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ShapeCategory> shapes = [
      ShapeCategory(
        shapeColor: Colors.yellow,
        shapeText: 'الترابيس',
        shapeImage: 'images/deep_back.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, TrabeesBack().trabeesBackId);
        },
      ),
      ShapeCategory(
        //shapeColor: const Color(0xffCE6200),
        shapeColor: Colors.blue,
        shapeText: 'الروتيتوركف',
        shapeImage: 'images/deep_back.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, RotatoBack().rotatoBackId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.green,
        shapeText: 'المجنص',
        shapeImage: 'images/deep_back.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, MagnsBack().magnsBackId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.red,
        shapeText: 'العضلة معينية الشكل',
        shapeImage: 'images/deep_back.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, SmallerBack().smallerBackId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.white,
        shapeText: 'القطنية',
        shapeImage: 'images/deep_back.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, KataniaBack().kataniaBackId);
        },
      ),
      ShapeCategory(
        shapeColor: Colors.black,
        shapeText: 'كل عضلات الضهر ',
        shapeImage: 'images/deep_back.jpg',
        shapeOnTap: () {
          Navigator.pushNamed(context, GeneralBack().generalBackId);
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
