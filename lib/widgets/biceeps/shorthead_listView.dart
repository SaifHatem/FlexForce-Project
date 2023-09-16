import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class ShortheadListview extends StatelessWidget {
  const ShortheadListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.yellow,
        muscleTextA: 'الارتكاز بالمسند بالدامبل',
        muscleTextE: 'Dumbbell preacher curl',
        muscleImage: 'images/biceps/shorthead/Dumbbell-Preacher-Curl.gif',
        muscleDescriotion:
            ' * من المهم الثبات علي الكرسي\n * عدم مرجحة الظهر\n',
      ),
      MuscleCategory(
        muscleTextColor: Colors.yellow,
        muscleTextA: 'الارتكاز بالمسند بالبار',
        muscleTextE: 'Bar preacher curl',
        muscleImage: 'images/biceps/shorthead/Bar_prechair.gif',
        muscleDescriotion:
            ' * مسك البار بزاية ضيقة\n * من المهم الثبات علي الكرسي\n * عدم مرجحة الظهر\n',
      ),
      MuscleCategory(
        muscleTextColor: Colors.yellow,
        muscleTextA: 'الارتكاز',
        muscleTextE: 'Concentration curl',
        muscleImage: 'images/biceps/shorthead/Concentration-Curl.gif',
        muscleDescriotion:
            ' * سند الدراع علي القدم\n * جعل الذراع مفرود قدر المستطاع أثناء النزول',
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
