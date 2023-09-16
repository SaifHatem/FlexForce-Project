import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class BricialesListview extends StatelessWidget {
  const BricialesListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: const Color(0xff52FE4A),
        muscleTextA: 'شاكوش',
        muscleTextE: 'Dumbbell hammer curl',
        muscleImage: 'images/biceps/breciales/Hammer-Curl.gif',
        muscleDescriotion:
            ' * قبضة الايد للداخل\n * أحرص علي ثبات الكوع\n * عمل قوس بسيط مع الدكة\n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff52FE4A),
        muscleTextA: 'شاكوش علي الدكة',
        muscleTextE: 'Bench dumbbell hammer curl ',
        muscleImage: 'images/biceps/breciales/brecials_set.gif',
        muscleDescriotion: ' * قبضة الايد للداخل\n',
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
