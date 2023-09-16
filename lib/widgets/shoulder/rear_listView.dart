import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class RearShoulderListview extends StatelessWidget {
  const RearShoulderListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.blue,
        muscleTextA: 'حبل من أعلي الرأس',
        muscleTextE: 'Cable face pull',
        muscleImage: 'images/back/rotato/backShoulderRobe.gif',
        muscleDescriotion:
            ' * سحب الحبل حتي جبهة الرأس \n * وقوة السحبة تحرج من الكوع وليست الايد\n ',
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
