import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class UpperListview extends StatelessWidget {
  const UpperListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: const Color(0xff7397E3),
        muscleTextA: 'بار عالي',
        muscleTextE: 'Incline bar bench press',
        muscleImage: 'images/upper_head/BPressIncline.gif',
        muscleDescriotion:
            ' * عمل الدكة علي زاوية 30 درجة\n * ضم لوحين الأكتاف معا \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n * تنزل بالبار علي أعلي الصدر \n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff7397E3),
        muscleTextA: 'تجميع عالي',
        muscleTextE: 'Incline dumbbell bench press ',
        muscleImage: 'images/upper_head/DPressIncline.gif',
        muscleDescriotion:
            ' * عمل الدكة علي زاوية 30 درجة\n * ضم لوحين الأكتاف معا \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n * تنزل بالدامبل علي أعلي الصدر \n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff7397E3),
        muscleTextA: 'تفتيح دامبل عالي',
        muscleTextE: 'Incline dumbbell fly',
        muscleImage: 'images/upper_head/DFlyIncline.gif',
        muscleDescriotion:
            ' * عمل الدكة علي زاوية 30 درجة\n * ثني الايد بنسبة بسيطة \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff7397E3),
        muscleTextA: 'كابل من أسفل لأعلي',
        muscleTextE: 'Low to high cable fly',
        muscleImage: 'images/upper_head/lowToheigh.gif',
        muscleDescriotion:
            ' * الكابلين في نفس مستوي الركبة \n * ثني الكوع بنسبة بسيطة \n * كف الأيد للداخل \n * مسار الحركة من أسفل الي أعلي \n ',
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
