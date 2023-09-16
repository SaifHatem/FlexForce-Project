import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class LitralheadListview extends StatelessWidget {
  const LitralheadListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.orange,
        muscleTextA: 'الغطس',
        muscleTextE: 'Bench dips',
        muscleImage:
            'images/tricebs/13991301-Bench-dip-on-floor_Upper-Arms_360.gif',
        muscleDescriotion:
            '* وضع يدك باتساع الكتف\n * لا تجعل جسمك بعيد عن الدكة\n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.orange,
        muscleTextA: 'حبل من أعلي',
        muscleTextE: 'Incline dumbbell bench press ',
        muscleImage: 'images/tricebs/litral head/Cable-Pushdown-with-rope.gif',
        muscleDescriotion:
            ' * ميل بالجزع للأمام أو مستقيم\n * كوعك دائما ثابت\n',
      ),
      MuscleCategory(
        muscleTextColor: Colors.orange,
        muscleTextA: 'المثلث من أعلي',
        muscleTextE: 'Cable tricebs',
        muscleImage:
            'images/tricebs/litral head/02411301-Cable-Triceps-Pushdown-V-bar-attachment_Upper-Arms_360.gif',
        muscleDescriotion:
            ' * ميل بالجزع للأمام أو مستقيم\n * كوعك دائما ثابت\n',
      ),
      MuscleCategory(
        muscleTextColor: Colors.orange,
        muscleTextA: 'الرفس',
        muscleTextE: 'Dumble kickback',
        muscleImage:
            'images/tricebs/litral head/03331301-Dumbbell-Kickback_Upper-Arms_360.gif',
        muscleDescriotion:
            ' * الكوع للأعلي بنسبة بسيطة \n * فرد الذراع كما بالشكل\n ',
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
