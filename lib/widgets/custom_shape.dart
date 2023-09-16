import 'package:flex_force/classes/shape_class.dart';
import 'package:flutter/material.dart';

class CustomShapes extends StatelessWidget {
  const CustomShapes({
    super.key,
    required this.shape,
  });

  final ShapeCategory shape;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: shape.shapeOnTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff61587e),
          ),
          width: 200,
          height: 200,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 1.0),
                child: Center(
                  child: ClipRRect(
                    child: Image(
                      height: 125,
                      width: 125,
                      image: AssetImage(
                          //'images/bench.jpg',
                          shape.shapeImage),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: CircleAvatar(
              //     radius: 58,
              //     backgroundColor: Color(0xff61587e),
              //     child: CircleAvatar(
              //       radius: 56,
              //       backgroundImage: AssetImage(
              //         'images/bench.jpg',
              //       ),
              //     ),
              //   ),
              // ),
              Text(
                shape.shapeText,
                style: TextStyle(
                  fontFamily: 'BreeSerif',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: shape.shapeColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
