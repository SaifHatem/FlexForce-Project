import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class ClavesListview extends StatelessWidget {
  const ClavesListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.green,
        muscleTextA: 'السمانة علي الدكة',
        muscleTextE: 'Seated calf raise',
        muscleImage:
            'images/leg/semana/26661301-Lever-Seated-Calf-Raise-plate-loaded-VERSION-2_Calves_360.gif',
        muscleDescriotion: ' * الجهاز بين الركبة والفخذ تقريبا\n ',
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
