import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class HamestringListview extends StatelessWidget {
  const HamestringListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.blue,
        muscleTextA: 'ديت ليفت بالمبل',
        muscleTextE: 'Romanian deadlift dummbell',
        muscleImage:
            'images/leg/back Leg/03001301-Dumbbell-Deadlift_Back_360.gif',
        muscleDescriotion:
            ' * رجوع مفصل الورك الي الخلف\n * ثني الركبة بدرجة بسيطة\n * نزول الوزن في خط مستقيم\n ',
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
