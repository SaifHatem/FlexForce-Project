import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class SideShoulderListview extends StatelessWidget {
  const SideShoulderListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.green,
        muscleTextA: 'رفرفة فردي جانبي',
        muscleTextE: 'One arm lateral raise shoulder',
        muscleImage:
            'images/shoulder/near_arm/Dumbbell-One-Arm-Lateral-Raise_shoulder.gif',
        muscleDescriotion:
            ' * الوقوف مستقيم\n * رفع الذراع جانبا \n * عدم ثني الكوع\n * الكوع أمام الكتف وليس في نفس مستواه \n * تنزل بالبار علي أعلي الصدر \n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.green,
        muscleTextA: 'رفرفة زوجي جانبي',
        muscleTextE: 'Double arm lateral raise',
        muscleImage: 'images/shoulder/near_arm/Double dummblle raise.gif',
        muscleDescriotion:
            ' * الوقوف مستقيم\n * رفع الذراع جانبا \n * عدم ثني الكوع\n * الكوع أمام الكتف وليس في نفس مستواه \n * تنزل بالبار علي أعلي الصدر \n ',
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
