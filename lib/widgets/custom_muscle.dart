import 'package:flex_force/classes/muscle_class.dart';
import 'package:flutter/material.dart';

class CustomMuscle extends StatelessWidget {
  const CustomMuscle({
    super.key,
    required this.muscle,
  });

  @override
  final MuscleCategory muscle;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 1,
          ),
          Center(
            child: Text(
              muscle.muscleTextA,
              style: TextStyle(
                color: muscle.muscleTextColor,
                fontSize: 25,
                fontFamily: 'BreeSerif',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Center(
            child: Text(
              muscle.muscleTextE,
              style: TextStyle(
                color: muscle.muscleTextColor,
                fontSize: 25,
                fontFamily: 'BreeSerif',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Image(
            image: AssetImage(muscle.muscleImage),
          ),
          const SizedBox(
            height: 2,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              muscle.muscleDescriotion,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Divider(
            color: muscle.muscleTextColor,
            thickness: 3,
          )
        ],
      ),
    );
  }
}
