import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class LongheadTryListview extends StatelessWidget {
  const LongheadTryListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: const Color(0xffBF0978),
        muscleTextA: 'الغطس',
        muscleTextE: 'Bench dips',
        muscleImage:
            'images/tricebs/13991301-Bench-dip-on-floor_Upper-Arms_360.gif',
        muscleDescriotion:
            '* وضع يدك باتساع الكتف\n * لا تجعل جسمك بعيد عن الدكة\n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xffBF0978),
        muscleTextA: 'تجميع ضيق مستوي',
        muscleTextE: 'Flat narrow bench press ',
        muscleImage: 'images/tricebs/long head/Barbell-JM-Bench-Press.gif',
        muscleDescriotion:
            ' * جعل الدكة مستقيمة \n * ضم لوحين الأكتاف معا \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n * ماسكة البار بطريقة اضيق  ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xffBF0978),
        muscleTextA: 'بار زجزاج عالي خلف الرأس',
        muscleTextE: 'Incline barbel skull crusher',
        muscleImage: 'images/tricebs/long head/incline_bar_zegzag.gif',
        muscleDescriotion:
            ' * عمل الدكة علي زاوية 30 درجة\n * الكوع فوق الرأس ويميل بدرجة بسيطة\n * النزول باالبار فوق الجمجمة\n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xffBF0978),
        muscleTextA: 'دامبل فرنسي زوجي',
        muscleTextE: 'Incline dumbbell fly',
        muscleImage: 'images/tricebs/long head/double_dumbell_frencch.gif',
        muscleDescriotion:
            ' * عمل الدكة علي زاوية تقريبا تسعين درجة\n * حمل الدامبل بالإبهامين\n * كف الايد لأعلي\n * الكوع أمام الكتف وليس في نفس مستواه \n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xffBF0978),
        muscleTextA: 'دامبل فرنسي فردي',
        muscleTextE: 'Low to high cable fly',
        muscleImage: 'images/tricebs/long head/Single_dumble_frenche.gif',
        muscleDescriotion:
            ' * اقبض علي الدامبل بيد واحدة\n * الذراع في الوضع الرأسي\n * ثني الكوع حتي يصبح خلف الرأس\n * قم برفع الدامبل الي نقطة البداية\n ',
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
