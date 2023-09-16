import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class FrontShoulderListview extends StatelessWidget {
  const FrontShoulderListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.red,
        muscleTextA: 'رفع التارة للأمام',
        muscleTextE: 'Weighted front raise ',
        muscleImage:
            'images/shoulder/front_arm/Weighted-Front-Raise_Shoulders.gif',
        muscleDescriotion:
            ' * الوقوف مستقيما تماما\n * رفع الايد حتي مستوي الرأس\n * عدم ثني الايد \n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.red,
        muscleTextA: 'رفع البار للأمام',
        muscleTextE: 'Barbell front raise ',
        muscleImage:
            'images/shoulder/front_arm/00411301-Barbell-Front-Raise_Shoulders_360.gif',
        muscleDescriotion:
            ' * الوقوف مستقيما تماما\n * رفع الايد حتي مستوي الرأس\n * عدم ثني الايد \n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.red,
        muscleTextA: 'رفع الدامبل للأمام',
        muscleTextE: 'Dummbell front raise ',
        muscleImage:
            'images/shoulder/front_arm/Two-Arm-Dumbbell-Front-Raise .gif',
        muscleDescriotion:
            ' * الوقوف مستقيما تماما\n * رفع الايد حتي مستوي الرأس\n * عدم ثني الايد \n ',
      ),
    ];

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: muscles.length,
        (context, index) {
          return CustomMuscle(muscle: muscles[index]);
        },
      ),
    );
  }
}
