import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class MiddleListview extends StatelessWidget {
  const MiddleListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: const Color(0xff52FE4A),
        muscleTextA: 'بار مستوي',
        muscleTextE: 'Flat bar bench press ',
        muscleImage: 'images/middle_head/BPressFlat.gif',
        muscleDescriotion:
            ' * جعل الدكة مستقيمة \n * ضم لوحين الأكتاف معا \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff52FE4A),
        muscleTextA: 'دامبل المستوي',
        muscleTextE: 'Flat dumbbell Bench Press ',
        muscleImage: 'images/middle_head/DpressFlat.gif',
        muscleDescriotion:
            ' * جعل الدكة مستقيمة   \n * ضم لوحين الأكتاف معا \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff52FE4A),
        muscleTextA: 'تفتيح مستوي',
        muscleTextE: 'Flat dumbbell fly',
        muscleImage: 'images/middle_head/DFlyFlat.gif',
        muscleDescriotion:
            ' * جعل الدكة مستقيمة \n * ثني الايد بنسبة بسيطة \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff52FE4A),
        muscleTextA: 'كابل مستوي',
        muscleTextE: 'Cable cross over',
        muscleImage: 'images/middle_head/flatCable.gif',
        muscleDescriotion:
            ' * الكابلين في نفس مستوي الكتف تقريبا \n * ثني الكوع بنسبة بسيطة \n * الكوع تحت مستوي الكتف\n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff52FE4A),
        muscleTextA: 'الفراشة',
        muscleTextE: 'Fly machine',
        muscleImage: 'images/middle_head/flyMachine.gif',
        muscleDescriotion:
            ' * ثني الكوع بنسبة بسيطة \n * عمل قوس بالظهر مع الدكة\n * مسار الحركة من أسفل الي أعلي \n ',
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
