import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class LongheadListview extends StatelessWidget {
  const LongheadListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.blue,
        muscleTextA: 'الكابل من الخلف من أسفل',
        muscleTextE: 'Single behind cable curl',
        muscleImage: 'images/biceps/longhead/behind_cable_curl.gif',
        muscleDescriotion:
            ' * اجعل كوعك خلف الجسم قليلا\n * ثبات الكوع أثناء السحب\n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.blue,
        muscleTextA: 'دامبل علي الدكة',
        muscleTextE: 'Incline dumbbell curl',
        muscleImage: 'images/biceps/longhead/Seated-Incline-Dumbbell-Curl.gif',
        muscleDescriotion:
            ' * عمل الدكة علي زاوية 30 درجة\n * تثبيت الكوع اثناء الصعود\n',
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
