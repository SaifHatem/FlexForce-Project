import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class TrabeesListview extends StatelessWidget {
  const TrabeesListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.yellow,
        muscleTextA: 'ترابيس بالبار',
        muscleTextE: 'Trabezius with bar',
        muscleImage: 'images/back/trabees/tarabeesbar.gif',
        muscleDescriotion: "",
        // ' * عمل الدكة علي زاوية 30 درجة\n * ضم لوحين الأكتاف معا \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n * تنزل بالبار علي أعلي الصدر \n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.yellow,
        muscleTextA: 'ترابيس بالبار سميث',
        muscleTextE: 'Trabezius with barsmith',
        muscleImage: 'images/back/trabees/tarabeesBarSmith.gif',
        muscleDescriotion: "",
        // ' * عمل الدكة علي زاوية 30 درجة\n * ضم لوحين الأكتاف معا \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n * تنزل بالدامبل علي أعلي الصدر \n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.yellow,
        muscleTextA: 'ترابيس بالمسطرة',
        muscleTextE: 'Trabezius curl',
        muscleImage: 'images/back/trabees/tarabeesCurl.gif',
        muscleDescriotion:
            ' * عمل الدكة علي زاوية 30 درجة\n * ثني الايد بنسبة بسيطة \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.yellow,
        muscleTextA: 'ترابيس بالدمبل',
        muscleTextE: 'Dumbbell Shrug',
        muscleImage: 'images/back/trabees/tarabeesDumbbell.gif',
        muscleDescriotion:
            ' * الايد مجرد حامل فقط للدامبل\n * الثبات ف الأعلي قليلا\n * الظهر مستقيم\n',
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
