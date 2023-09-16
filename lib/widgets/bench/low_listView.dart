import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class LowListview extends StatelessWidget {
  const LowListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.red,
        muscleTextA: 'البار المستوي',
        muscleTextE: 'Bar Bench Press ',
        muscleImage: 'images/low_head/highToLow.gif',
        muscleDescriotion:
            ' * الكابلين أعلي مستوي الكتف تقريبا \n * ثني الكوع بنسبة بسيطة \n * الكوع تقريبا في نفس مستوي الكتف\n ',
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
