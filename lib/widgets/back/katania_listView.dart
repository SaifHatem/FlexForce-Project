import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class KataniaListview extends StatelessWidget {
  const KataniaListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.white,
        muscleTextA: 'القطنية',
        muscleTextE: 'Back extention',
        muscleImage: 'images/back/katania/katania.gif',
        muscleDescriotion:
            ' * بداية الوسط عند آخر الدكة \n * ننزل حتي يصبح الجسم علي شكل ثمانية\n * الصعود حتي يصبح الجسم في خط مستقيم\n ',
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
