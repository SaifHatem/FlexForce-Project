import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class MidialheadListview extends StatelessWidget {
  const MidialheadListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: const Color(0xff5BFDEE),
        muscleTextA: 'الغطس',
        muscleTextE: 'Bench dips',
        muscleImage:
            'images/tricebs/13991301-Bench-dip-on-floor_Upper-Arms_360.gif',
        muscleDescriotion:
            '* وضع يدك باتساع الكتف\n * لا تجعل جسمك بعيد عن الدكة\n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff5BFDEE),
        muscleTextA: 'الرفس',
        muscleTextE: 'Dumble kickback',
        muscleImage:
            'images/tricebs/litral head/03331301-Dumbbell-Kickback_Upper-Arms_360.gif',
        muscleDescriotion:
            ' * الكوع للأعلي بنسبة بسيطة \n * فرد الذراع كما بالشكل\n ',
      ),
      MuscleCategory(
        muscleTextColor: const Color(0xff5BFDEE),
        muscleTextA: 'تجميع ضيق مستوي',
        muscleTextE: 'Flat narrow bench press ',
        muscleImage: 'images/tricebs/long head/Barbell-JM-Bench-Press.gif',
        muscleDescriotion:
            ' * جعل الدكة مستقيمة \n * ضم لوحين الأكتاف معا \n * عمل قوس بسيط مع الدكة\n * الكوع أمام الكتف وليس في نفس مستواه \n * ماسكة البار بطريقة اضيق  ',
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
